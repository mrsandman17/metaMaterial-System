# metaMaterial-System
The experiment system is used to measure transmission and reflection coefficents (S params) of a metamaterial.
The system includes a Keysight network Analyser to perform the measurement. A modifield CNC machine, controlled by an arduino unit, is used to move the metamaterial in order to perform measurements along an axis.
This repository details the programmtic aspect of the system. The getting started section will walk trough performing first measurements with the system. The About the System section will specify more details required to add more functinality or debug the system.

## Getting started
You can download the entire repository by clicking "Code" on the top right of the files window, and then "Download Zip".

### Measuring S parameters

#### Using the network analyser GUI
First connect your board for a S paramaters measurement. Like this:
![Alt text](instructionPics/s_params_system_1.jpg?raw=true "Title")
We will test the system using the netowrk analyser GUI by performing a measurement of S11 Parameter.
By using the program "Network Analyser" you can perform a simple measurement.
In order to perform the measurement:
1. Start the program "Network Analyser"
2. A window will pop out, select the instrument and press "Run"
![Alt text](instructionPics/na_gui_1.png?raw=true "Title")
3. Click "Power" -> "RF Power" -> "On"
![Alt text](instructionPics/na_gui_7_m.png?raw=true "Title")
4. You can change the number of sample points using "Sweep".
![Alt text](instructionPics/na_gui_8_m.png?raw=true "Title")
5. You can change the frequency range using "Freq"
![Alt text](instructionPics/na_gui_6_m.png?raw=true "Title")
5. Select "Trace" and press "Trace 1" to add a new trace.
![Alt text](instructionPics/na_gui_3_m.png?raw=true "Title")
6. Use "Meas" to select the S11 parameter
![Alt text](instructionPics/na_gui_4_m.png?raw=true "Title")

You now should be able to see your data. Note that clicking on "Preset" will also create a measurement of S11 parameter.
S21 parameter can be added by adding "Trace 2" in "Trace", and then selecting S21 in "Meas".

#### Measuring S parameters using the example script
After we verfied our data is good, we can automate the measurement process. A working code example is available in this repo.
The script  "measure_Sparams.m" is used to take a measurement of S11 and S21 parameters at a specified frequency range.
The script will connect to keysight network analyser, sample the data and plot S21 and S11 params. 
The frequency range can be changed with "START_FREQ" or "END_FREQ" constants.
The script does not set the number of sample points, this should be done through the GUI, as specified before, make sure to set "POINTS_NUM" constant to the same value.  

### Measuring X field
We can now measure the transmission field over an axis. For this purpose we will control an Arduino unit, the unit will control a motor which is  moving the surface the board is on.  In this measurement,  One cable is connected to the board and another functions as a sensor that scans the board. 
![Alt text](instructionPics/x_field_system_3.jpg?raw=true "Title")

Connect the measure field system hardware (**Not detailed here**)

We will command the Arduino using GRBL. The current Arduino should already have the grbl library code uploaded, but if it doesn't, it can be found in this repo, under "grblUpload". It should be uploaded to the arudino unit (**Only on first use**).
This can be done via arduino gui, click on the file "grblUpload" and then upload it:
![Alt text](instructionPics/arduino_1_m.png?raw=true "Title")
When the arduino is ready, we can communicate with it by sending GCode commands. We will first communicate with it using a java based program called "Universal-Gcode-Sender". Using the program, connect to the arduino port (Usually “COM3”) and try to send a command that will move the the motor a bit to one side (For instance, send X+ with a Step size of 0.1). 
![Alt text](instructionPics/gcode_sender_1.png?raw=true "Title")
Note that The GCODE commands you send are printed, We will later send those commands via Matlab. 

When you are done, make sure to disconnect from the arduino by clicking on close, this will free up the COM port.
**When first debugging the system, make sure to move the motor in small steps.**

#### Using the example script to measure X field.
Under "measureField" in this repository you can find the script "measure_x_field.m". This script will connect to keysight network analyser and the arduino unit and perform a full measurement of the board over the X axis. 

The script uses two utility functions: 

  - "doMeasurment.m" - Performs a measurement on an instrument object and returns its results.

  - "doGCodeCommand.m" - Executes a gCode command on an arduino object.

  **Before running measureField, Make sure to move the sensor to where the board starts! This can be done manually or through the program Universal-Gcode-Sender. This only needs to be done once, as the sensor will return to this location after the measurement is complete.**
  
## About the system


### The IVI driver
#### Using Keysight Command Expert
The computer communicates with the network analyzer using SCPI protocol. The keysight driver wraps this protocol with an easier to use driver interface called IVI. In this tutorial we will demonstrate how to communicate with the device using IVI-C. IVI-C interface can be viewed with the program “Keysight Command Expert”. 
Using this program we can run and simulate the commands we need on the device, and export them as Matlab commands.
To connect to the network analyser with the command expert:

1. Start the Program "Keysight command expert".

2. Create a new instrument driver object by clicking on "new Instrument" (**Only on first use, the instrument will be saved**)
![Alt text](instructionPics/ce_3_m.png?raw=true "Title")

3. Select "Connect to a real instrument"
![Alt text](instructionPics/ce_1_m.png?raw=true "Title")

4. Follow the wizard until this screen, select AgNA with the type "IVI-C"

5. Click Connect.

The device should appear green in "Active Instruments" the left side of the screen. We can look for more commands, view their documentation and export their code to Matlab. To add a command:
1. Select the command using the dropdown menu

2. Select it's parameters.

3. Add it to the command sequence: "Add Step" / "Add Step & Execute"

4. The command should appear at the buttom of the screen
![Alt text](instructionPics/ce_4_m.png?raw=true "Title")
4. Export the command by pressing "File" -> "Export Sequence"
![Alt text](instructionPics/ce_5.png?raw=true "Title")

#### General IVI command flow:
1. Init and reset the device (Removes all previous measurements). using the command:
```
initwithoptions
```
2. Configure pre-measurement data. for example, frequency range can be altered using:
```
channelstimulusrangeconfigurestartstop
```
3. Create a channel measurement. using the command:
```
channelmeasurementsadd
```
4. fetching the measurement data, using the command:
```
channelmeasurementfetchformatted
```
The return value of this command is the measurement data.

(screenshot of command with params)

After the commands were added you can export the commands using the export option, The result will be a template Matlab code. Note that The return value of the fetch command should be saved, as this is measurement data. In addition, changing to meaningfull variable and parameter names is advised. 
Be sure to disconnect from the device after usage, using these commands in matlab:
```
disconnect(instrument); 
delete(instrument);
```

Note that alternatively, Matlab can be used to get the commands, instead of the Command Expert. This can be achieved via accessing ”Matlab Instrument Driver” (can be accessed by typing “tmtool” into the command window).



### Working with the Arduino unit

The commands for working with arduino in matlab:
- Create a new serial connection:
```
arduino = serial('COM3', 'BaudRate', 115200);
set(arduino, 'TimeOut', 10);
```
- GCode commands can now be sent to the arduino:
```
fprintf(arduino, gCodeCommand);
confirm = fgetl(arduino);
```
- Make sure to close the connection to arduino, This can be achieved with:
```
out = instrfind;
flcose(out);
```

### FAQ
##
**Q:** How can we change the number of sample points in Keysight? 

**A:** This can be changed through the keysight GUI ("Network Analyser").
(screenshot) 
Note that this is possible because changes made through the GUI "Network Analyser" will also affect the script.
##
**Q:** The script can't connect to arduino because it is being used. 

**A:** Make sure you closed any open connections to the arduino. through the script or through the GUI "Universal-Gcode-Sender"
```
out = instrfind;
flcose(out);
```
##
**Q:** What is the flow of using IVI commands in matlab?

**A:** The flow consists of several steps:
- We create an instrument object and connect to it thus connecting to the network analyser driver.
```
makemid('AgNA','AgNA.mdd')
instrument = icdevice('AgNA.mdd', 'PXI10::0-0.0::INSTR');
connect(instrument);
```
- We reset and init the device.
```
invoke(instrument,'initwithoptions','PXI10::0-0.0::INSTR',false,true,"")
```
- We can access a sub object of the intrument by using the get command, then we can invoke commands on that sub object. For example in order to init the frequency range of the measurement:
```
ChannelStimulusRange = get(instrument, 'Channelstimulusrange');
invoke(ChannelStimulusRange, 'channelstimulusrangeconfigurestartstop', string(CHANNEL_NUM), START_FREQ, END_FREQ);
```
The last invoke command will execute the ivi command 'channelstimulusrangeconfigurestartstop' on he sub-object "ChannelStimulusRange" with the parameters: string(CHANNEL_NUM), START_FREQ, END_FREQ.
##
**Q:** Which IVI commands will return values?

**A:** A get command will return the sub-object. But some invoke commands will also return values.
For example, lets look at the fetch formatted command:
```
[s21,s21Size] = invoke(channelMeasurment, 'channelmeasurementfetchformatted', repCapidentifier, BUFFER_SIZE, s21);
```
This command will call 'channelmeasurementfetchformatted' on channelMeasurment sub-object of the instrument with the parameters:

- repCapidentifier - the measrument identifirer string. In the format: "Channel{CHANNEL_NUM}:Measurment{MEASURMENT_NUM}"

- BUFFER_SIZE -The size of the buffer (make sure it is big enough)

- s21 - The initial array of the results

The command will return the sampled s21 array and its size.(The size is determined from the number of sample points in keysight)

##
**Q:** How can we look for more IVI-commands?

**A:** You can look for more commands at "Keysight command expert" program or through matlab instrument driver: "tmtool"-> Look for the instrument and connect to it, documentation of the avaible commands can be found in this window. Make sure to send the correct parameter types (string, int). The command expert method might be easier to use.
##

##
**Q:** We replaced the System motor, what are the changes needed from the programmatic side?

**A:** The current script assumes that the Gcode command +X 0.1 will move it by one millimeter. If the motor is changed you will need to remeasure it. The easiest way might be to send a move command with "Uiniversal-GCode-Sender" GUI and measure how the board moved with a  ruler. If the value has indeed changed, you can edit the values in the script with the "G_MOVE_X_RIGHT, "G_MOVE_X_LEFT" constants.
```
G_MOVE_X_RIGHT = "G21G91G1X0.1F25";
G_MOVE_X_LEFT = "G21G91G1X-0.1F25";
```
Change the value "0.1" in the command for whatever value that corresponds to 1mm.
##
