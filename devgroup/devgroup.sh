#!/bin/bash

# make sure all users on this machine are members of the _developer group
/usr/sbin/dseditgroup -o edit -a everyone -t group _developer

# enable developer mode
/usr/sbin/DevToolsSecurity -enable
