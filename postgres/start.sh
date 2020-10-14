#!/bin/bash

docker run --name bt-test-postgres --rm -d -p 55432:5432 -e POSTGRES_DB=dbtest -e POSTGRES_USER=cortex -e POSTGRES_PASSWORD=cortex postgres:latest
