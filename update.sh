#!/bin/bash

wget http://www.openbl.org/lists/base.txt -O list/openbl
echo "$(tail -n +5 list/openbl)" > list/openbl
