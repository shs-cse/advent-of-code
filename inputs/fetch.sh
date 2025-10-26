#!/usr/bin/env bash
# e.g. https://adventofcode.com/2015/day/1/input

if [[ ! "$1" =~ ^[0-9]{4}$ ]]; then
    echo "Error: arg is not a year."
    exit 1
fi

YEAR=$1

IFS= read -rs -p "Session key: " SESSION_KEY
echo

# SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

if (($YEAR < 2025)); then
    LAST_DAY=25
else
    LAST_DAY=12
fi

# check in case year doesn't exist and error is raised
set -e
curl -sf "https://adventofcode.com/$YEAR/day/1/input"
mkdir -p "inputs/$YEAR"

for ((i=1; i<=$LAST_DAY; i++)) do
    echo -n "Downloading $YEAR/day/$i/input... "
    curl -sf "https://adventofcode.com/$YEAR/day/$i/input" --cookie "session=${SESSION_KEY/#session=}" -o "inputs/$YEAR/$i.txt"
    echo "done."
done