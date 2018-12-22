#!/bin/bash
#
# *********************************************
# * Delete Player with 3 Digits in their Name *
# *********************************************
#
# del_player_3digit <file>
#

# Generate a List of Players with 3 Digits in their name
sed 's/[0-9][0-9][0-9]*/&\n/' <$1 | grep -v ":" | grep -P '(?<!\d)\d{3}(?!\d)' >players/del_player.txt


# Generate the clean File
grep -vf players/del_player.txt $1 >$1_new

# Remove the Player-Files
cd players
rm $(cat del_player.txt) >> NUL
cd ..

# Backup old file
mv $1 "authBackup"

# replace old file with new cleaned one
mv $1_new $1

