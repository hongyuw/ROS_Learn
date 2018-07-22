#### Run "source devel/setup.bash" automatically
1. Open your terminal
2. Write the command 'gedit ~/.bashrc' a file will open on gedit
3. Go to the bottom (my last line was "source /opt/ros/indigo/setup.bash" , for others it may differ)
4. Go under that line and write 'source [YOUR PATH]/catkin_ws/devel/setup.bash'
5. Save and exit
6. Now with every new shell you open, it will source automatically
>Example:<br>
>Add --> source ~/catkin_ws/devel/setup.bash<br>
>Workspace catkin_ws is no longer need to be sourced
