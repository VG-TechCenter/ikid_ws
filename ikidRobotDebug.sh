#!/bin/bash

# gnome-terminal --tab -- bash -c "roscore; exec bash"

gnome-terminal --tab -- bash -c "\
source /home/wp/ikid_ws/devel/setup.bash; \
roslaunch ikid_robot my_launch.launch; \
exec bash"

gnome-terminal --tab -- bash -c "\
sleep 10s; \
source /home/wp/ikid_ws/devel/setup.bash; \
rosrun ros_socket server_special_gait; \
exec bash"