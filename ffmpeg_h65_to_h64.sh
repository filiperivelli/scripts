#!/bin/bash
'
Sript para fazer o trasncode de h65 para h64
Data: 28/04/2022
Por: Filipe Rivelli
https://superuser.com/questions/1380946/how-do-i-convert-10-bit-h-265-hevc-videos-to-h-264-without-quality-loss
'
for var in "$@"
do
    ffmpeg -i "$var" -map 0 -c:v libx265 -crf 20 -vf format=yuv420p -c:a copy "$var".mkv
done