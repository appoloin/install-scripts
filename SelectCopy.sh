#!/bin/bash

src=$1

dst=$2

find "$src" -type f \( -iname "*.SMK" -o -iname "*.VGA" -o -iname "TABLES*" -o -iname "TBLLIST" \) -exec cp {} "$dst" \;
