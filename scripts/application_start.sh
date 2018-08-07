#!/usr/bin/env bash

basename=$(basename $0)

echo "Running ${basename}..."

echo "Starting the application..."

service tomcat start

exit 0
