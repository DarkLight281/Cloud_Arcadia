#!/bin/bash

# Find files larger than 100MB and track them with Git LFS
find . -type f -size +100M | while read file; do
    git lfs track "$file"
    echo "Tracking $file with Git LFS"
done

# Commit the .gitattributes file to the repository
git add .gitattributes
git commit -m "Track files larger than 100MB with Git LFS"
