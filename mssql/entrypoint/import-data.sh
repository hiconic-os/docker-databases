#!/bin/bash

# DB needs some seconds to start
sleep 10
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P cortex-10 -i /opt/mssql-tools/script/init.sql
