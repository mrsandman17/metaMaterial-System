% Constants
BUFFER_SIZE = 2000;
START_FREQ = 0.5 * 10 ^ 9;
END_FREQ = 14 * 10 ^ 9;
CHANNEL_NUM = 1;
WINDOW_NUM = 1;
POINTS_NUM = 1000;

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
%% Measure s11
s11 = 1:POINTS_NUM;
channelMeasurment = get(instrument, 'Channelmeasurement');
% Add a new measurement
measurmentNum = invoke(channelMeasurment, 'channelmeasurementsadd', string(CHANNEL_NUM), "S11", WINDOW_NUM);
% Create measurement identifier string
repCapidentifier = strcat("Channel", string(CHANNEL_NUM), ":Measurment", string(measurmentNum));
% Auto scale trace
channelMeasurmentTrace = get(instrument, 'Channelmeasurementtrace');
invoke(channelMeasurmentTrace, 'Channelmeasurementtraceautoscale',  repCapidentifier);
% Retrieve measurement data
[s11, s11Size] = invoke(channelMeasurment, 'channelmeasurementfetchformatted', repCapidentifier, BUFFER_SIZE,s11);
freqs = linspace(START_FREQ, END_FREQ, POINTS_NUM);

%% Measure s21
s21 = 1:POINTS_NUM;
channelMeasurment = get(instrument, 'Channelmeasurement');
% Add a new measurement
measurmentNum = invoke(channelMeasurment, 'channelmeasurementsadd', string(CHANNEL_NUM), "S21", WINDOW_NUM);
% Create measurement identifier string
repCapidentifier = strcat("Channel", string(CHANNEL_NUM), ":Measurment", string(measurmentNum));
% Auto scale trace
channelMeasurmentTrace = get(instrument, 'Channelmeasurementtrace');
invoke(channelMeasurmentTrace, 'Channelmeasurementtraceautoscale',  repCapidentifier);
% Retrieve measurement data
[s21,s21Size] = invoke(channelMeasurment, 'channelmeasurementfetchformatted', repCapidentifier, BUFFER_SIZE, s21);


%% plot s11 and s21 together
freqs = linspace(START_FREQ, END_FREQ, s21Size);
figure();
hold on
plot(freqs(1:s21Size), s21(1:s21Size),'DisplayName','S12')
plot(freqs(1:s11Size), s11(1:s11Size),'DisplayName','S11')
title('S Params')
xlabel('Freq[Hz]') 
ylabel('[Db]') 
legend()
set(gca,'FontSize',20)
hold off