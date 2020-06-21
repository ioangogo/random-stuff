SERVICE=$1
DATE=$2
REGEX="https?:\/\/\S*"
playlist="$SERVICE/$DATE-songs.txt"

readarray rows < $playlist


for row in "${rows[@]}";do
        clear
	if [[ ${row} =~ ${REGEX} ]]; then
		youtube-dl -e ${row}
	else
		echo "${row}"
	fi
	read -p "Press enter to continue"
	clear
	mpv --ytdl-format=mp4 --screen=1 --fs-screen=1 --fs --slang=en --pause "$(echo ${row}|xargs)"
done 
