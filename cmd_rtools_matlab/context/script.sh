#!/bin/bash
matlab -nodisplay -nosplash -nodesktop -batch "try, run('/run/determined/workdir/file.m'), catch, exit(1), end, exit(0);"
echo "matlab exit code: $?"