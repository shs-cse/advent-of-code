#!/usr/bin/env bash

# SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

if [[ ! "$1" =~ ^c|py|rs$ ]]; then
    echo "Error: arg did not match c/py/rs"
    exit 1
fi

IFS= read -r FIRST_LINE < "temp/.puzzle"

YEAR="${FIRST_LINE%%/*}"
mkdir -p "solutions/$YEAR"

SRC_FILE="temp/puzzle.$1"
DEST_FILE="solutions/$FIRST_LINE.$1"
cp "$SRC_FILE" "$DEST_FILE"
echo "Saved to $DEST_FILE"