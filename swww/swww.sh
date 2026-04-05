#!/bin/bash

img=$(ls ~/Images/wallpapers/ | sort -R | tail -1)

pgrep awww-daemon 2>&1

if [ $? -ne 0 ] 
then
  awww-daemon
fi

for screen in $(awww query | awk -F ":" '{print $2}'); do awww img -o "$screen" ~/Images/wallpapers/${img} --transition-type wipe --transition-angle 30 --transition-step 90; done
