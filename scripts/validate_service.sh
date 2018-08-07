#!/usr/bin/env bash

basename=$(basename $0)

echo "Running ${basename}..."

running_proccess=`ps aux | grep "tomcat" | grep -v "grep" | wc -l`

if [ ${running_proccess} -eq 1 ]; then
    exit 0
fi

echo "Could not find tomcat process..." 1>&2

exit 1
