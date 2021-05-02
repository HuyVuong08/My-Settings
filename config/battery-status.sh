#!/bin/bash
   while true
    do
       export DISPLAY=:0.0
       battery_level=`acpi -b | grep -P -o '[0-9]+(?=%)'`
       if on_ac_power; then
           if [ $battery_level -ge 80 ]; then
              notify-send "Battery Level: ${battery_level}%" "Please unplug the charging cable."
              paplay /usr/share/sounds/freedesktop/stereo/suspend-error.oga
           fi
       else
           if [ $battery_level -le 40 ]; then
              notify-send --urgency=CRITICAL "Low Battery Level: ${battery_level}%" "Please plug in the charging cable."
              paplay /usr/share/sounds/freedesktop/stereo/suspend-error.oga
           fi
       fi
     sleep 60
done
