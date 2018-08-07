rosrun tf tf_echo /world /turtle1   <br>
This should show you the pose of the first turtle. <br>
tf_echo   parent_frame  child_frame

 transform.setOrigin( tf::Vector3(x, y, z) );
 q.setRPY(r, p, y);
 br.sendTransform(tf::StampedTransform(transform, ros::Time::now(), parent_frame, child_frame));
 listener.lookupTransform(child_frame, parent_frame, ros::Time(0), transform);
 //set origin, the coordinates are in parent_frame, the origin is the child_frame's origin
