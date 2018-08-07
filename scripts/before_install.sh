#!/usr/bin/env bash

basename=$(basename $0)

echo "Running ${basename}..."

# TODO: Can back these files up first if you perfer to do that.
yum install tomcat -y

# CodeDeploy will error if there is already a file in place. Therefore,
# before installing the files, the target should be cleaned up to
# create a clean space in which to place all of the new files.

exit 0
