#!/bin/bash
/opt/mssql-tools/script/import-data.sh &
/opt/mssql/bin/sqlservr
