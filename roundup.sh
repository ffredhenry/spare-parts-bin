#!/bin/bash

echo "Here are the most recent failed login names: "

cat /var/log/auth.log | grep "Failed" | tail -n 15
