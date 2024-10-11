#!/bin/bash

img=$(ls ~/Images/wallpapers/ | sort -R | tail -1)

swaylock -eli ~/Images/wallpapers/${img}
