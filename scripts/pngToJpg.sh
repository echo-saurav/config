#!/bin/bash

echo $1;
for i in $1/* ; do
	convert "$i" "${i%.*}.jpg"
done
