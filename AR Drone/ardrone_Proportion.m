% This file shows how to do proportion control with MATLAB and Tum_simulator
% topic /gazebo/model_states contains the global position coordinates of the quadcopter,
% we subscribe this topic and process the data by adding gain K to get the velocity message, then publish it to /cmd_vel
% --------------------------
cmdpub = rospublisher('/cmd_vel',rostype.geometry_msgs_Twist);
sub = rossubscriber('/gazebo/model_states');
cmdmsg = rosmessage(cmdpub);
pause(1);
k = 1;      % gain
for i = 1:1000
msg = receive(sub,10)

height = msg.Pose(12,1).Position.Z  % Pose contains 12 "matrices"
cmdmsg.Linear.Z = -k*(height - 3);
send(cmdpub,cmdmsg);

pause(0.1)    % this time interval should not be too large, less than 0.2 is a good scale
end
