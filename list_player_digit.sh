#!/bin/bash
# print out all until : and insert a crlf
# then send it through a pipe to grep and print all lines without :

sed 's/[0-9][0-9][0-9]*/&\n/' <$1 | grep -v ":"
