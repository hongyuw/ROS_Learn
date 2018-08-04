## Connect to an External ROS Master
If you know the entire URI (Uniform Resource Identifier) of the master, you can create the global node and connect to this master using the following syntax:
```bash
rosinit('http://192.168.1.1:12000')
```
In our lab, the command is:
```bash
rosinit('http://128.200.3.67:11311')
```
