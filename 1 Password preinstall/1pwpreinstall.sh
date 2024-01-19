#!/bin/bash

# Check if 1Password is running if yes close it, then continue with the install.  If not continue with install.

if pgrep -x "1Password" > /dev/null ; then
    echo "Closing 1Password..."
    # Terminate the 1Password process
    pkill -x "1Password"
    sleep 2 # Give some time for the process to terminate
    echo "1Password closed successfully."
else
    echo "1Password is not running."
fi;

# Check if 1Password-Crash-Handler is running if yes close it, then continue with the install.  If not continue with install.
if pgrep -x "1Password-Crash-Handler" > /dev/null ; then
    echo "Closing 1Password-Crash-Handler..."
    # Terminate the 1Password-Crash-Handler process
    pkill -x "1Password-Crash-Handler"
    sleep 2 # Give some time for the process to terminate
    echo "1Password-Crash-Handler closed successfully."
else
    echo "1Password--Crash-Handler is not running."
fi
