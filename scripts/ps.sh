#!/bin/bash

set -e

output=pscircle.png

pscircle --output=$output \
	--max-children=300 \
	--output-width=1900 \
	--output-height=1080 \
	--tree-radius-increment=70 \
	--dot-radius=3 \
	--link-width=1.3 \
	--tree-font-size=17 \
	--toplists-font-size=15 \
	--toplists-bar-width=30 \
	--toplists-row-height=15 \
	--toplists-bar-height=3 \
	--cpulist-center=-800.0:-80.0 \
	--memlist-center=-800.0:80.0 \
	--hide-top-levels=0 \
	--tree-sector-angle=0 \
	--show-root=0 \
	--memlist-show=1 \
	--tree-center=600:0 \

if command -v feh >/dev/null; then
	feh --bg-fill $output
	rm $output
fi

