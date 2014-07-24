#!/usr/bin/env bash

set -e

SIZE=160

ls -d */ | while read -r category
do
  echo ${category}
  find "${category}thumbs" -type f -delete
  ls "${category}" | grep -i \.jpg$ | while read -r file
  do
    echo "Processing ${category}${file}..."
    convert "${category}${file}" -resize ${SIZE}x${SIZE} -background white -gravity center -extent ${SIZE}x${SIZE} -format jpg -quality 75 "${category}thumbs/${file}"
  done
done

echo "Done."

