#!/usr/bin/env bash

basename=$(basename $0)

echo "Running ${basename}..."

service tomcat restart

exit $?
