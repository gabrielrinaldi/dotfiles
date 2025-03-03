#!/usr/bin/env bash

WEATHER="$(curl -s 'wttr.in/80108?m&format=%c%t')"
LABEL="${WEATHER:3:-1}"
ORIGINAL_ICON="${WEATHER:0:1}"

case $ORIGINAL_ICON in
1000)
  ICON=
  ;; # Sunny, Clear/113
1003)
  ICON=
  ;; # Partly cloudy/116
1006)
  ICON=
  ;; # Cloudy/119
1009)
  ICON=
  ;; # Overcast/122
1030)
  ICON=
  ;; # Mist/143
1063)
  ICON=
  ;; # Patchy rain possible/176
1066)
  ICON=
  ;; # Patchy snow possible/179
1069)
  ICON=
  ;; # Patchy sleet possible/182
1072)
  ICON=
  ;; # Patchy freezing drizzle possible/185
1087)
  ICON=
  ;; # Thundery outbreaks possible/200
1114)
  ICON=
  ;; # Blowing snow/227
1117)
  ICON=
  ;; # Blizzard/230
1135)
  ICON=
  ;; # Fog/248
1147)
  ICON=
  ;; # Freezing fog/260
1150)
  ICON=
  ;; # Patchy light drizzle/263
1153)
  ICON=
  ;; # Light drizzle/266
1168)
  ICON=
  ;; # Freezing drizzle/281
1171)
  ICON=
  ;; # Heavy freezing drizzle/284
1180)
  ICON=
  ;; # Patchy light rain/293
1183)
  ICON=
  ;; # Light rain/296
1186)
  ICON=
  ;; # Moderate rain at times/299
1189)
  ICON=
  ;; # Moderate rain/302
1192)
  ICON=
  ;; # Heavy rain at times/305
1195)
  ICON=
  ;; # Heavy rain/308
1198)
  ICON=
  ;; # Light freezing rain/311
1201)
  ICON=
  ;; # Moderate or heavy freezing rain/314
1204)
  ICON=
  ;; # Light sleet/317
1207)
  ICON=
  ;; # Moderate or heavy sleet/320
1210)
  ICON=
  ;; # Patchy light snow/323
1213)
  ICON=
  ;; # Light snow/326
1216)
  ICON=
  ;; # Patchy moderate snow/329
1219)
  ICON=
  ;; # Moderate snow/332
1222)
  ICON=
  ;; # Patchy heavy snow/335
1225)
  ICON=
  ;; # Heavy snow/338
1237)
  ICON=
  ;; # Ice pellets/350
1240)
  ICON=
  ;; # Light rain shower/353
1243)
  ICON=
  ;; # Moderate or heavy rain shower/356
1246)
  ICON=
  ;; # Torrential rain shower/359
1249)
  ICON=
  ;; # Light sleet showers/362
1252)
  ICON=
  ;; # Moderate or heavy sleet showers/365
1255)
  ICON=
  ;; # Light snow showers/368
1258)
  ICON=
  ;; # Moderate or heavy snow showers/371
1261)
  ICON=
  ;; # Light showers of ice pellets/374
1264)
  ICON=
  ;; # Moderate or heavy showers of ice pellets/377
1273)
  ICON=
  ;; # Patchy light rain with thunder/386
1276)
  ICON=
  ;; # Moderate or heavy rain with thunder/389
1279)
  ICON=
  ;; # Patchy light snow with thunder/392
1282)
  ICON=
  ;; # Moderate or heavy snow with thunder/395
esac

echo $ORIGINAL_ICON
echo "$ICON"

sketchybar -m --set "$NAME" icon="$ICON" label="$LABEL"
