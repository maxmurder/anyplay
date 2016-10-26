#/bin/bash

for i in "$@"; do
    if [[ "$i" == $'-h' ]] ; then
        echo $'Simple script transcodes audio files with ffmpeg and pipes to aplay.\nanyplay [path]'
    elif [ -a "$i" ]; then
        ffmpeg -i "$i" -f wav pipe:1 | aplay
    else
        echo "File not found: $i"
    fi
done
