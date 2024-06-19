#!/usr/bin/env bash

echo "Uninstalling AnarchOS Tools..."

# Remove invocation script in the /usr/local/bin folder
INVOCATION_PATH="/usr/local/bin/anarchos"

if [ -x $INVOCATION_PATH ]; then
	echo -e "\t[x] removing invocation script at $INVOCATION_PATH"
else
	echo -e "\t[-] no invocation script to uninstall at $INVOCATION_PATH"
fi

rm $INVOCATION_PATH