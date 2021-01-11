#!/bin/sh

cat README.md | grep "^\*" | cut -f 2 -d " " | while read predictionurl
do
	predictionfilename="$(printf "${predictionurl}" | tr ":/" "__")"
	wget -O "${predictionfilename}.html" "${predictionurl}"
done
