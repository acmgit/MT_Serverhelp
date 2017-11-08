#!/bin/bash
# $1 = Privileg
# $2 = Filename
# list_priv interact auth.txt
# lists all Player without the given Privileg

grep -v $1 $2 | sed 's/[^:]*/&\n/' | grep -v ":"
