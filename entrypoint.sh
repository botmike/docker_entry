#!/bin/bash
# x11vnc_display.sh file for starting the xvfb with better screen resolution, configuring and running the vnc server
export DISPLAY=:20
Xvfb :20 -screen 0 800x600x24 &
x11vnc -passwd TestVNC -display :20 -N -forever 
# after this, we could start running the tests
