#!/bin/sh

if ! which python; then
		python3 ez.py templates/"$1".yml
	else
		python ez.py templates/"$1".yml
fi

rm -rf ./lua/"$1"
mv ./"$1"/lua/"$1" ./lua
mv ./"$1"/colors/"$1".vim ./colors
rm -rf "$1"
