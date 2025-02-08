#!/bin/bash

# -> Write a script to display the username and hostname of the system.

# $HOSTNAME and $USER are the default variables to get the hostname and user name


echo "Hostname: $(hostname)"  
echo "Username: $(whoami)"

echo "Hostname: $HOSTNAME"
echo "Username: $USER"