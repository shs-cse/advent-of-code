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

if [[ ! "$4" =~ ^|c|py|rs$ ]]; then
    echo "Error: arg did not match c/py/rs"
    exit 1
fi


YEAR=$1
DAY=$2
PART=$3

# SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

load_file () {
    FILE_EXTENSION="$1"
    DEST_FILE="temp/puzzle.$FILE_EXTENSION"
    echo -n ".$FILE_EXTENSION: "
    if [[ "$FILE_EXTENSION" == "txt" ]]; then
        SRC_FILE="solutions/../inputs/$YEAR/$DAY.$FILE_EXTENSION"
    else
        SRC_FILE="solutions/$YEAR/${DAY}_$PART.$FILE_EXTENSION"
    fi
    if [ ! -f "$SRC_FILE" ]; then
        if [[ "$FILE_EXTENSION" == "txt" ]]; then
            echo "failed. Either requested input has not been fetched or doesn't exist at all."
            exit 1
        fi
        SRC_FILE="solutions/$YEAR/${DAY}_1.$FILE_EXTENSION"
        if [ ! -f "$SRC_FILE" ]; then
            SRC_FILE="solutions/0_1.$FILE_EXTENSION"
        fi
    fi
    echo -n "copying $SRC_FILE to $DEST_FILE... "
    cp "$SRC_FILE" "$DEST_FILE"
    echo "complete."
}

load_file "txt"

echo "$YEAR/${DAY}_$PART" > "temp/.puzzle"

if [ "$#" -eq 4 ]; then
    load_file $4
else
    load_file "c"
    load_file "py"
    load_file "rs"
fi
