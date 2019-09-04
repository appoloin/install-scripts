#!/bin/bash

src=$1
dst=$2

echo $src $dst

src_path=$(echo "$1" | sed -r "s/(.+)\/.+/\1/")
echo $src_path 


cp -avr "$src_path/."  "$dst"
