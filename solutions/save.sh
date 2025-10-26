#!/usr/bin/env bash

# SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

if [[ ! "$1" =~ ^c|py|rs$ ]]; then
    echo "Error: arg did not match c/py/rs"
    exit 1
fi

IFS= read -r FIRST_LINE < "temp/puzzle"

YEAR="${FIRST_LINE%%/*}"
mkdir -p "solutions/$YEAR"

cp "temp/puzzle.$1" "solutions/$FIRST_LINE.$1"