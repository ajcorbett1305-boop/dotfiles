#!/bin/bash

CAPACITY=$(cat /sys/class/power_supply/BAT0/capacity)
STATUS=$(cat /sys/class/power_supply/BAT0/status)
IMAGE_DIR="$HOME/.local/share/icons/candy-icons/status/scalable"

if [ "$STATUS" = "Charging" ] && [ "$CAPACITY" -le 5 ]; then
  echo "$IMAGE_DIR/battery-000-charging.png"
elif [ "$STATUS" = "Charging" ] && [ "$CAPACITY" -le 15 ]; then
  echo "$IMAGE_DIR/battery-010-charging.png"
elif [ "$STATUS" = "Charging" ] && [ "$CAPACITY" -le 25 ]; then
  echo "$IMAGE_DIR/battery-020-charging.png"
elif [ "$STATUS" = "Charging" ] && [ "$CAPACITY" -le 35 ]; then
  echo "$IMAGE_DIR/battery-030-charging.png"
elif [ "$STATUS" = "Charging" ] && [ "$CAPACITY" -le 45 ]; then
  echo "$IMAGE_DIR/battery-040-charging.png"
elif [ "$STATUS" = "Charging" ] && [ "$CAPACITY" -le 55 ]; then
  echo "$IMAGE_DIR/battery-050-charging.png"
elif [ "$STATUS" = "Charging" ] && [ "$CAPACITY" -le 65 ]; then
  echo "$IMAGE_DIR/battery-060-charging.png"
elif [ "$STATUS" = "Charging" ] && [ "$CAPACITY" -le 75 ]; then
  echo "$IMAGE_DIR/battery-070-charging.png"
elif [ "$STATUS" = "Charging" ] && [ "$CAPACITY" -le 85 ]; then
  echo "$IMAGE_DIR/battery-080-charging.png"
elif [ "$STATUS" = "Charging" ] && [ "$CAPACITY" -le 95 ]; then
  echo "$IMAGE_DIR/battery-090-charging.png"
elif [ "$STATUS" = "Charging" ] && [ "$CAPACITY" -ge 95 ]; then
  echo "$IMAGE_DIR/battery-100-charging.png"
elif [ "$STATUS" = "Discharging" ] && [ "$CAPACITY" -le 5 ]; then
  echo "$IMAGE_DIR/battery-000.png"
elif [ "$STATUS" = "Discharging" ] && [ "$CAPACITY" -le 15 ]; then
  echo "$IMAGE_DIR/battery-010.png"
elif [ "$STATUS" = "Discharging" ] && [ "$CAPACITY" -le 25 ]; then
  echo "$IMAGE_DIR/battery-020.png"
elif [ "$STATUS" = "Discharging" ] && [ "$CAPACITY" -le 35 ]; then
  echo "$IMAGE_DIR/battery-030.png"
elif [ "$STATUS" = "Discharging" ] && [ "$CAPACITY" -le 45 ]; then
  echo "$IMAGE_DIR/battery-040.png"
elif [ "$STATUS" = "Discharging" ] && [ "$CAPACITY" -le 55 ]; then
  echo "$IMAGE_DIR/battery-050.png"
elif [ "$STATUS" = "Discharging" ] && [ "$CAPACITY" -le 65 ]; then
  echo "$IMAGE_DIR/battery-060.png"
elif [ "$STATUS" = "Discharging" ] && [ "$CAPACITY" -le 75 ]; then
  echo "$IMAGE_DIR/battery-070.png"
elif [ "$STATUS" = "Discharging" ] && [ "$CAPACITY" -le 85 ]; then
  echo "$IMAGE_DIR/battery-080.png"
elif [ "$STATUS" = "Discharging" ] && [ "$CAPACITY" -le 95 ]; then
  echo "$IMAGE_DIR/battery-090.png"
elif [ "$STATUS" = "Discharging" ] && [ "$CAPACITY" -ge 95 ]; then
  echo "$IMAGE_DIR/battery-100.png"
fi
