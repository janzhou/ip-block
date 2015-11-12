#!/bin/bash

cat /var/log/auth.log | grep Failed > failed-password.txt
sed -nr 's/.*from ([^a-z]*) .*/\1/p' failed-password.txt > list/local
rm failed-password.txt
