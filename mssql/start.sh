#!/bin/bash

SCRIPT_ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

docker run --rm --name bt-test-mssql --rm -d -p 51433:1433 -e ACCEPT_EULA=Y -e SA_PASSWORD=cortex-10 --mount type=bind,source="${SCRIPT_ROOT_DIR}/entrypoint,target=/opt/mssql-tools/script" mcr.microsoft.com/mssql/server:2017-latest
# DB needs some seconds to start
sleep 10
docker exec -it bt-test-mssql //opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P cortex-10 -i //opt/mssql-tools/script/init.sql
