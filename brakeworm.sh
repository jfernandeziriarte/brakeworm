#! /bin/bash

mkdir "$PWD"/converted

for FILE in *.mov
do
filename=$(basename $FILE)
#extension=${filename##*.}
#filename=${filename%.*}
./HandBrakeCLI -i $filename -o "$PWD"/converted/$filename --custom-anamorphic --keep-display-aspect -e x264

#Uncomment for a little debug echo:
#echo $filename

done
