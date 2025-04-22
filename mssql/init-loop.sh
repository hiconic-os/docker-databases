# Use for troubleshooting.
# This is similar to import-data.sh, but can be run externally, i.e. from the outside of the docker container.

__waitTillServerStarts() {
	local i;
	for (( i=0; i<30 ; i++ )) ; do
		local logs=$(docker logs hc-test-mssql 2>/dev/null | grep "Starting up database 'tempdb'.")
		if [ ! -z "$logs" ]; then return; fi
		echo "NOT READY YET";
		sleep 1;
	done
}


__waitTillServerStarts;
docker exec hc-test-mssql //opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P cortex-10 -i //opt/mssql-tools/script/init.sql
