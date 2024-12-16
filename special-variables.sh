#!/bin/bash
echo "All variables passed to the script: $@"
echo "Number of variables passed: $#"
echo "Script name: $0"
echo "Current working directory: $PWD"
echo "Home directory of current user: $HOME"
#PID IS process instance of id
echo "PID of script executing now: $$"
sleep  100 &
echo "PID of last background command: $!"