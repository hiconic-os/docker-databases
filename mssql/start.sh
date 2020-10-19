#!/bin/bash

SCRIPT_ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

docker run --name bt-test-mssql --rm -d -p 51433:1433 -e ACCEPT_EULA=Y -e SA_PASSWORD=cortex-10 --entrypoint /opt/mssql-tools/script/entrypoint.sh --mount type=bind,source="${SCRIPT_ROOT_DIR}/entrypoint,target=/opt/mssql-tools/script" mcr.microsoft.com/mssql/server:2017-latest
