#!/usr/bin/bash

for i in *.mp4;
	do name=`echo $i | cut -d '.'  -f1`;
	echo $name;
	ffmpeg -i "$i" -vcodec mjpeg -q:v 2 -acodec pcm_s16be -q:a 0 -f mov "${name}.mov";
done
