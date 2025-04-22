#!/bin/bash

docker run --name hc-test-mysql --rm -d -p 53306:3306 -e MYSQL_DATABASE=dbtest -e MYSQL_USER=cortex -e MYSQL_PASSWORD=cortex -e MYSQL_ROOT_PASSWORD=cortex mysql:5
