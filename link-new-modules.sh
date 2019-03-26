#!/bin/bash

shopt -s nullglob

for dir in modules/*; do
	for file in $(basename ${dir})/*/*lua; do
		(cd ${dir} && cp -s ../../${file} . )
	done
done

