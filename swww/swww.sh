#!/bin/bash

img=$(ls ~/Images/wallpapers/ | sort -R | tail -1)

pgrep swww-daemon 2>&1

if [ $? -ne 0 ] 
then
  swww-daemon
fi

for screen in $(swww query | awk -F ":" '{print $2}'); do swww img -o "$screen" ~/Images/wallpapers/${img} --transition-type wipe --transition-angle 30 --transition-step 90; done
