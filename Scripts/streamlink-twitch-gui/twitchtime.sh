#! /bin/bash

H=$(date "+%k")
MONITORS=$(xrandr -q | grep " connected" | wc -l)
#MONITORS=1
if ( [ 21 -le $H ] && [ $H -lt 23 ]  ||  [ 0 -le $H ] && [ $H -lt 6 ] ) && [ $MONITORS -gt 1 ]
then 
    MPV_PROFILE="twitchbed"
else 
    MPV_PROFILE="twitchpip"
fi

echo "$MPV_PROFILE"
exec mpv --profile="$MPV_PROFILE" "$@"
