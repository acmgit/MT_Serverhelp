#!/bin/bash
#
# *******************************
# * Delete Player without Privs *
# *******************************
#
# del_player_priv <priv> <file>
#

# Generate a List of Players without the Priv
grep -v $1 $2 | sed 's/[^:]*/&\n/' | grep -v ":" >players/del_player.txt

# Generate the clean File
grep $1 $2 >$2_new

# Remove the Player-Files
cd players
rm $(cat del_player.txt)
cd ..

# Remove the old File
rm $2
# and restore it with the clean File.
mv $2_new $2



