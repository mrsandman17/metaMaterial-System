% Constants
BUFFER_SIZE = 1000;
START_FREQ = 0.5 * 10 ^ 9;
END_FREQ = 4 * 10 ^ 9;
% The channel to use in the measurment
CHANNEL_NUM = 1;
WINDOW_NUM = 1;
% Number of sample points, should be equal to the number of points in the
% program "Network analyser"
POINTS_NUM = 201;
% arduino
% Commands taken from "universal-gcode-sender" program
G_MOVE_X_RIGHT = "G21G91G1X0.1F25";
G_MOVE_X_LEFT = "G21G91G1X-0.1F25";
EXECUTE_MOVE = "G90 G21";
MOTOR_STEPS_NUM = 80;
START_X = 0;
END_X = 80;
%% Create the MATLAB instrument driver
makemid('AgNA','AgNA.mdd')
instrument = icdevice('AgNA.mdd', 'PXI10::0-0.0::INSTR');
% Connect device object to hardware.
connect(instrument);
% Init and reset
invoke(instrument,'initwithoptions','PXI10::0-0.0::INSTR',false,true,"")
% Set frequency range
ChannelStimulusRange = get(instrument, 'Channelstimulusrange');
invoke(ChannelStimulusRange, 'channelstimulusrangeconfigurestartstop', string(CHANNEL_NUM), START_FREQ, END_FREQ);

%% Init arduino
arduino = serial('COM3', 'BaudRate',115200);
set(arduino,'TimeOut',10);
fprintf('Initiating Arduino Serial Connection...')
fopen(arduino);
fprintf(arduino, "G91");
%% Measure data
a_data = zeros(MOTOR_STEPS_NUM, POINTS_NUM);
for i = 1:MOTOR_STEPS_NUM
     % Measure
    [a_1, a_1_size] = doMeasurment(instrument);
    % add to data
    a_data(i,:) = a_1;
    % Move
    doGCodeCommand(arduino, G_MOVE_X_LEFT); 
    doGCodeCommand(arduino,  EXECUTE_MOVE); 
    pause(0.5)
end
%% home probe
for i = 1:MOTOR_STEPS_NUM
    % Move
    doGCodeCommand(arduino, G_MOVE_X_RIGHT); 
    doGCodeCommand(arduino, EXECUTE_MOVE); 
end


%% close arduino
out = instrfind;
fclose(out);


%% close instrument driver
% Cleanup
disconnect(instrument);
delete(instrument);

%% plot heatmap
freq_step = (END_FREQ - START_FREQ) / (POINTS_NUM - 1);
x_step = (END_X - START_X) / (POINTS_NUM - 1);
[freqs, x_arr] = meshgrid(START_FREQ:freq_step:END_FREQ, START_X:x_step:END_X);
current_coord = linspace(1, MOTOR_STEPS_NUM, MOTOR_STEPS_NUM);
new_coord = linspace(1, MOTOR_STEPS_NUM, POINTS_NUM);
interp_a_data = interp1(current_coord, a_data, new_coord);
% surf(freqs, x_arr, a_data);
% pcolor(freqs, x_arr, a_data);
pcolor(x_arr, freqs, interp_a_data);

shading flat;
colorbar;
caxis([-120 -20])
title('Transmission','FontSize', 30)
ylabel('Freq[Hz]') 
xlabel('X[mm]') 
zlabel('[dB]') 
set(gca,'FontSize',30)
set(gca, 'FontName', 'sans-serif')
