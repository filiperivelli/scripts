#!/bin/bash
'
Sript para fazer o trasncode de h65 para h64
Data: 28/04/2022
Por: Filipe Rivelli
https://superuser.com/questions/1380946/how-do-i-convert-10-bit-h-265-hevc-videos-to-h-264-without-quality-loss
'
for var in "$@"
do
    ffmpeg -hwaccel cuda -i "$var" -c:v h264_nvenc -pix_fmt yuv420p -preset slow -rc constqp/cbr/vbr -b:v 8M -maxrate:v 10M -c:a aac -b:a 224k ./h264/"$var"
done