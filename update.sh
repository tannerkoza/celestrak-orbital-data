#!/bin/bash

YYYY=$(date -u +%Y)
DOY=$(date -u +%j)

CONSTELLATIONS=("globalstar" "iridium" "iridium-NEXT" "oneweb" "orbcomm" "starlink")
FORMATS=("tle" "xml")

for const in ${CONSTELLATIONS[@]}; do
    for format in ${FORMATS[@]}; do

        url="celestrak.org/NORAD/elements/gp.php?GROUP=$const&FORMAT=$format"
        dir="./${const}/${YYYY}/${DOY}"
        filename="${const}.${format}"
        mkdir -p $dir
        wget -w 2 -O $dir/$filename "$url"

    done
done
