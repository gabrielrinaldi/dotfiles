#!/usr/bin/env bash

UPDOWN=$(ifstat -i "en7,en0" -b 0.1 1 | tail -n 1)
DOWN=$(echo "$UPDOWN" | awk '{sum=0; for(i=1;i<=NF;i+=2) sum+=$i; print sum}' | cut -f1 -d ".")
UP=$(echo "$UPDOWN" | awk '{sum=0; for(i=2;i<=NF;i+=2) sum+=$i; print sum}' | cut -f1 -d ".")

DOWN_FORMAT=""
if [ "$DOWN" -gt "999" ]; then
  DOWN_FORMAT=$(echo "$DOWN" | awk '{ printf "%03.0f Mbps", $1 / 1000}')
else
  DOWN_FORMAT=$(echo "$DOWN" | awk '{ printf "%03.0f kbps", $1}')
fi

UP_FORMAT=""
if [ "$UP" -gt "999" ]; then
  UP_FORMAT=$(echo "$UP" | awk '{ printf "%03.0f Mbps", $1 / 1000}')
else
  UP_FORMAT=$(echo "$UP" | awk '{ printf "%03.0f kbps", $1}')
fi

sketchybar \
  -m \
  --set network.down label="$DOWN_FORMAT" icon.highlight="$(if [ "$DOWN" -gt "0" ]; then echo "on"; else echo "off"; fi)" \
  --set network.up label="$UP_FORMAT" icon.highlight="$(if [ "$UP" -gt "0" ]; then echo "on"; else echo "off"; fi)"
