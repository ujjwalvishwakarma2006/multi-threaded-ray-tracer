#!/bin/bash

# This script converts all PPM files to their respective PNG files
# in the current directory, if not already present, using ImageMagick's 
# convert tool.

for file in *.ppm; do
    if [ ! -e "${file%.ppm}.png" ]; then
        echo "Converting $file to ${file%.ppm}.png"
        convert "$file" "${file%.ppm}.png"
    fi
done