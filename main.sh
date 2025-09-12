#!/bin/bash

dir="img/"

count=1

cd "$dir" || exit

for file in *.png; do
  [ -e "$file" ] || continue

  newname="${count}.png"

  echo "Renaming $file -> $newname"
  mv "$file" "$newname"

  ((count++))
done
