#!/bin/bash
# $1 = Privileg
# $2 = Filename
# list_priv interact auth.txt

grep $1 $2 | sed 's/[^:]*/&\n/' | grep -v ":"
