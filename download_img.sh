#!/bin/sh

links=$(cat dummy.json | grep -oP "https.*\.jpeg")

echo -e "$links" | while read line; do
    filename=$(echo "$line" | grep -oP "products/.*/.*\.(jpeg)" | tr '/' '_')
    wget "$line" -O "assets/imgs/$filename"
done 
