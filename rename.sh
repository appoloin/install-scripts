#!/bin/bash

src="$1"
#echo $src

dst="$2"
#echo $dst

find "$src" -maxdepth 1 -type f -iname "*.ogg" -print0 | 
    while IFS="" read -r -d "" FILENAME; 
        do mv "$FILENAME" "$dst""${FILENAME##*/*[Tt][Rr][Aa][cC][kK]}";
    done
