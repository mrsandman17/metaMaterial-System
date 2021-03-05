function [a_1, a_1_size] = doMeasurment(instrument)
BUFFER_SIZE = 1000;
CHANNEL_NUM = 1;
WINDOW_NUM = 1;
POINTS_NUM = 201;
a_1 = 1:POINTS_NUM;
channelMeasurment = get(instrument, 'Channelmeasurement');
% Add a measurement
measurmentNum = invoke(channelMeasurment, 'channelmeasurementsadd', string(CHANNEL_NUM), "B_1", WINDOW_NUM);
% Create measurement identifier string
repCapidentifier = strcat("Channel", string(CHANNEL_NUM), ":Measurment", string(measurmentNum));
channelMeasurmentTrace = get(instrument, 'Channelmeasurementtrace');
% Auto scale trace
invoke(channelMeasurmentTrace, 'Channelmeasurementtraceautoscale',  repCapidentifier);
% Retrieve measurement data and save it to a_1
[a_1, a_1_size] = invoke(channelMeasurment, 'channelmeasurementfetchformatted', repCapidentifier, BUFFER_SIZE,a_1);
% Delete the measurement
invoke(channelMeasurment, 'channelmeasurementsdelete', string(CHANNEL_NUM),measurmentNum );


