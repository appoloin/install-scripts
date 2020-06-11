#!/bin/bash

src=""
dst=""
level=""

while [ -n "$1" ]; do 
    case $1 in
        -1) #current folder only 
            level="-maxdepth 1 ";
        ;;
        -s) #source 
            src="$2";
            shift
        ;;
        -d) #destination    
            dst="$2";
            shift
        ;;
        --) #file names from here
		    shift;
		    break
		;; # Exit the loop using break command
    esac
    shift
done

for param in $@; do
    find "$src" ${level}-type f -iname \"$param\" -print -exec cp {}  "$dst" \;
done
