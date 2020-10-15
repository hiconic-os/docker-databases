#!/bin/bash

SCRIPT_ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
find ${SCRIPT_ROOT_DIR} -mindepth 1 -maxdepth 1 -type d \( ! -name .git \) -exec echo -n "Starting " \; -exec basename {} " DB" \; -exec {}/start.sh \; -exec echo "-----------" \;

exit 0
