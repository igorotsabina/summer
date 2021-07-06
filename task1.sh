#!/bin/bash

user=user2

grep $user /etc/passwd
if [ $? -eq 0 ]; then
   echo "Users Exist"
else
   echo "No user exist -- Invalid Username"
   echo "Creating user ..."
   sudo useradd -g $user
   sudo useradd -g $user
fi