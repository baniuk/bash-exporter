#!/bin/sh

TEMP=$(cat /sys/class/thermal/thermal_zone0/temp | xargs -I{} echo "scale=2;{}/1000" | bc)

echo "{\"labels\": {}, \"results\": {\"temp_cpu_celsius\": $TEMP} }"

exit 0
