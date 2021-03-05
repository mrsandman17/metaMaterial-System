function doGCodeCommand(arduino, gCodeCommand)
% Execute gCodeCommand on arudino object
fprintf(arduino,gCodeCommand);
confirm = fgetl(arduino);
% print the return value of the command
fprintf('%s \t %s',gCodeCommand,confirm);
