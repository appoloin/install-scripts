#!/bin/bash

src=$1
echo src

dst=$2
echo dst

file=$3
echo files

src_path=$(echo "$1" | sed -r "s/(.+)\/.+/\1/")
echo src_path

find "$src_path" -type f \( -name $file \) -exec cp {} "$dst" \;