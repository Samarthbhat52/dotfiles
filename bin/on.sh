#!/bin/zsh

if [ -z "$1" ]; then
	echo "Error: A file name must be set."
	exit 1
fi

file_name = $(echo "$1"  | tr ' ' '-')
formatted_file_name = $(date "+%d-%m-%Y")_${file_name}.md

cd "/Users/samarthbhat/workspace/Brain/" || exit
touch "${formatted_file_name}"
nvim "${formatted_file_name}"
