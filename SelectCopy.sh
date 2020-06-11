#!/bin/bash

src=$1

dst=$2

src_path=$(echo "$1" | sed -r "s/(.+)\/.+/\1/")

find "$src_path" -type f \( -name "SAMPLE.AD" -o 
                            -name "SAMPLE.OPL" -o 
                            -name "WESTERN" \) -exec cp {} "$dst" \;'
