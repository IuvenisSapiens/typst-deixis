#!/bin/bash
for f in examples/*.typ; do 
  filename=$(basename "$f" .typ)
  echo "Compiling $filename..." 
  typst compile "$f" "assets/gallery/${filename}-{p}.svg" --root "."
done
