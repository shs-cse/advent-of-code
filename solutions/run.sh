#!/usr/bin/env bash

# SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

if [[ ! "$1" =~ ^c|py|rs$ ]]; then
    echo "Error: arg did not match c/py/rs"
    exit 1
fi

if [[ "$1" == "c" ]]; then
    clang main.c temp/puzzle.c -o temp/puzzle.out && ./temp/puzzle.out
elif [[ "$1" == "py" ]]; then
    uv run main.py
elif [[ "$1" == "rs" ]]; then
    cargo run
fi