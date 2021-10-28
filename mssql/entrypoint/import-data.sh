#!/bin/bash

# We are checking every second for a log indicating the server has started, so we can call out init.sql via sqlcmd
__waitTillServerStarts() {
	local i;
	for (( i=0; i<30 ; i++ )) ; do
		# Not sure what the exact signal is that the server is ready, but a message saying 'Starting up database 'tempdb'.' seems to be working fine.
		# If it ever fails, use "docker logs bt-test-mssql" to see what other outputs from the server come later (the output from docker logs is the content of the errorlog file below).
		# We have no idea why the regular logs end up in "errolog" file, but that's how it is
		local logs=$(cat /var/opt/mssql/log/errorlog | grep "Starting up database 'tempdb'.")
		if [ ! -z "$logs" ]; then return; fi
		sleep 1;
	done
}


__waitTillServerStarts;
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P cortex-10 -i /opt/mssql-tools/script/init.sql
