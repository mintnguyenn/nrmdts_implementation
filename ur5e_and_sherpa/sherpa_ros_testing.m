clear; clc;

[pub, msg] = rospublisher('/robot/move_base/cmd_vel');
msg.Linear.X = 5;
msg.Linear.Y = 0;
while(1)
send(pub,msg);
pause(0.1);
end