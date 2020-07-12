#!/bin/sh
xterm -e "source /opt/ros/kinetic/setup.bash; roscore" &
sleep 3
xterm -e "roslaunch my_robot world.launch" &
sleep 7
xterm -e "roslaunch turtlebot_rviz_launchers view_navigation.launch --screen" &
sleep 3
xterm -e "rosrun gmapping slam_gmapping _base_frame:=robot_footprint" &
sleep 3
xterm -e "rosrun teleop_twist_keyboard teleop_twist_keyboard.py" 
sleep 3
