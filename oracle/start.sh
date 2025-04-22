#!/bin/bash

SCRIPT_ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

docker run --name hc-test-oracle --rm -d -p 51521:1521 -p 58080:8080 -e ORACLE_ALLOW_REMOTE=true -e ACLE_DISABLE_ASYNCH_IO=true --mount type=bind,source="${SCRIPT_ROOT_DIR}/entrypoint/entrypoint-initdb.d,target=/docker-entrypoint-initdb.d"  oracleinanutshell/oracle-xe-11g
