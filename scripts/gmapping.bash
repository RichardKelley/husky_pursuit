roscore
roslaunch husky_pursuit husky_bringup.launch
rosrun tf static_transform_publisher 1 0 0 0 0 0 odom_combined base_footprint 100

# Connect joystick
# Run this to get the ch flightstick to work:
sudo lsusb -v

roslaunch husky_teleop teleop.launch
rosrun gmapping slam_gmapping scan:=scan _odom_frame:=odom_combined
rosrun map_server map_saver




# rosparam set use_sim_time true
# rosbag record -O husky_laserdata /scan /tf
# rosbag play --clock husky_laserdata