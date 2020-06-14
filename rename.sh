#!/bin/bash

src="$1"
#echo $src

dst="$2"
#echo $dst


find "$src" -maxdepth 1 -type f -iname "*.ogg" -print0 | 
    while IFS="" read -r -d "" FILENAME; 
        do  
        name="${FILENAME##*/}"
        mv "$FILENAME" "$dst""/""${name/xeen/Track}";
    done
