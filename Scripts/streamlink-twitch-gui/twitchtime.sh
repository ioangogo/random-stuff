#! /bin/bash

H=$(date "+%k")
if (( [ 21 -le $H ] && [ $H -lt 23 ] ) || ( [ 0 -le $H ] && [ $H -lt 6 ] )); then 
    MPV_PROFILE="twitchbed"
else 
    MPV_PROFILE="twitchpip"
fi

exec mpv --profile="$MPV_PROFILE" "$@"
