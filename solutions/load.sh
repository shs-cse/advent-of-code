#!/usr/bin/env bash

if [[ ! "$1" =~ ^[0-9]{4}$ ]]; then
    echo "Error: arg1 is not a year."
    exit 1
fi

if [[ ! "$2" =~ ^[0-9]{1,2}$ ]]; then
    echo "Error: arg2 is not a day."
    exit 1
fi

if [[ ! "$3" =~ ^1|2$ ]]; then
    echo "Error: arg3 must be 1 or 2."
    exit 1
fi


YEAR=$1
DAY=$2
PART=$3

# SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

load_file () {
    echo -n "$1: "
    FILE_EXTENSION="${2##*.}"
    SRC_FILE="$2"
    DEST_FILE="temp/puzzle.$FILE_EXTENSION"
    if [ ! -f "$2" ]; then
        if [[ "$FILE_EXTENSION" == "txt" ]]; then
            echo "failed. Either requested input has not been fetched or doesn't exist at all."
            exit 1
        fi
        SRC_FILE="solutions/0_1.$FILE_EXTENSION"
    fi
    echo -n "copying $SRC_FILE to $DEST_FILE... "
    cp "$SRC_FILE" "$DEST_FILE"
    echo "complete."
}

load_file " Input" "solutions/../inputs/$YEAR/$DAY.txt"

echo "$YEAR/${DAY}_$PART" > "temp/puzzle"

load_file "     C" "solutions/$YEAR/${DAY}_$PART.c"

load_file "Python" "solutions/$YEAR/${DAY}_$PART.py"

load_file "  Rust" "solutions/$YEAR/${DAY}_$PART.rs"
