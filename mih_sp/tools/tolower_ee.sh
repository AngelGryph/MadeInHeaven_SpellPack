#!/bin/bash
for file_path in $(find . -type f -o -type d)
do
  dir_path=$(dirname "${file_path}")

  file_mixed=$(basename "${file_path}")
  file_lower=$(echo "${file_mixed}" | tr '[A-Z]' '[a-z]')

  if [ "${file_mixed}" != "${file_lower}" ]
  then
    ln -sfn "${file_mixed}" "${dir_path}/${file_lower}"
  fi
done


