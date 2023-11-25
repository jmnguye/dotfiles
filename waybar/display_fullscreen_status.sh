#!/usr/bin/env bash

hyprctl activewindow | grep -q "fullscreen: 1" && echo "Fullscreen"
