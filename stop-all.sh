#!/bin/bash

SCRIPT_ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
find ${SCRIPT_ROOT_DIR} -mindepth 1 -maxdepth 1 -type d -exec echo -n "Stopping " \; -exec basename {} " DB" \; -exec {}/stop.sh \; -exec echo "-----------" \;

exit 0
