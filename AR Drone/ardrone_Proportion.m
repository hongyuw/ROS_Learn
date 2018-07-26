cmdpub = rospublisher('/cmd_vel',rostype.geometry_msgs_Twist);
sub = rossubscriber('/gazebo/model_states');
cmdmsg = rosmessage(cmdpub);
pause(1);
k = 1;
for i = 1:1000
msg = receive(sub,10)

height = msg.Pose(12,1).Position.Z
cmdmsg.Linear.Z = -k*(height - 3);
send(cmdpub,cmdmsg);

pause(0.1)
end
