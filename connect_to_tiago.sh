#!/usr/bin/env bash

# Remember to connect to TIAGo through WiFi (!!)
export ROS_MASTER_URI=http://tiago-108c:11311
export ROS_IP=10.68.0.${1:-129}	# 10.68.0.129 is the default IP address of the author's PC when
								# connected to TIAGo. A number different from 129 can be
								# set as command line argument when launching the script.
source devel/setup.bash
