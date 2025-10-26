#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

alias fetch="bash $SCRIPT_DIR/inputs/fetch.sh"
alias load="bash $SCRIPT_DIR/solutions/load.sh"
alias save="bash $SCRIPT_DIR/solutions/save.sh"
alias run="bash $SCRIPT_DIR/run.sh"
