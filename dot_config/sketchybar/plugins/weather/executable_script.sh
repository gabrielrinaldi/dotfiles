#!/usr/bin/env bash

declare -A WEATHER_SYMBOL_DAY=(
  ["Unknown"]=""
  ["Cloudy"]=""
  ["Fog"]=""
  ["HeavyRain"]=""
  ["HeavyShowers"]=""
  ["HeavySnow"]=""
  ["HeavySnowShowers"]=""
  ["LightRain"]=""
  ["LightShowers"]=""
  ["LightSleet"]=""
  ["LightSleetShowers"]=""
  ["LightSnow"]=""
  ["LightSnowShowers"]=""
  ["PartlyCloudy"]=""
  ["Sunny"]=""
  ["ThunderyHeavyRain"]=""
  ["ThunderyShowers"]=""
  ["ThunderySnowShowers"]=""
  ["VeryCloudy"]=""
)

declare -A WEATHER_SYMBOL_NIGHT=(
  ["Unknown"]=""
  ["Cloudy"]=""
  ["Fog"]=""
  ["HeavyRain"]=""
  ["HeavyShowers"]=""
  ["HeavySnow"]=""
  ["HeavySnowShowers"]=""
  ["LightRain"]=""
  ["LightShowers"]=""
  ["LightSleet"]=""
  ["LightSleetShowers"]=""
  ["LightSnow"]=""
  ["LightSnowShowers"]=""
  ["PartlyCloudy"]=""
  ["Sunny"]=""
  ["ThunderyHeavyRain"]=""
  ["ThunderyShowers"]=""
  ["ThunderySnowShowers"]=""
  ["VeryCloudy"]=""
)

LABEL="$(curl -s 'wttr.in/80108?m&format=%t')"
CONDITION="$(curl -s 'wttr.in/80108?m&format=%C' | cut -d ',' -f 1 | gsed 's/\b\(.\)/\u\1/g' | sed 's/ //g')"

current_hour=$(date +%H)

if [ "$current_hour" -ge 7 ] && [ "$current_hour" -lt 18 ]; then
  ICON="${WEATHER_SYMBOL_DAY[$CONDITION]}"
else
  ICON="${WEATHER_SYMBOL_NIGHT[$CONDITION]}"
fi

sketchybar -m --set "$NAME" icon="$ICON"
sketchybar -m --set "weather.label" label="$LABEL"
