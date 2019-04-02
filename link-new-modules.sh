#!/bin/bash

shopt -s nullglob

for dir in $(find . -maxdepth 1 -mindepth 1 -type d | grep -v -E '(resources|modules|.git)'); do
	mkdir -p modules/${dir}
done

for dir in modules/*; do
	for file in $(basename ${dir})/*/*lua; do
		(cd ${dir} && cp -s ../../${file} . )
	done
done

