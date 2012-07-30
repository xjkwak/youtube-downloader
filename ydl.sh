#!/bin/sh
#IFS=$'\n'
for line in `< list.txt`; do
#  newfile=`youtube-dl.py -o %\(title\)s.%\(ext\)s $line | grep '^\[download\]' | cut -d ' ' -f 3-`
#  ffmpeg -b 192k -i $newfile ${newfile/flv/mp3}
#  rm $newfile
  youtube-dl $line
done
