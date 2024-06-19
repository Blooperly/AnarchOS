#!/usr/bin/env bash

SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")

logError(){
	LOGMSG=$1
	if [ -n $LOGMSG ]; then
		echo "ERROR: $LOGMSG"
	else
		echo "ERROR!"
	fi

	exit
}

echo "Installing AnarchOS Tools..."
echo "Script directory: $SCRIPTPATH"

# Install an invocation script in the /usr/local/bin folder
INVOCATION_PATH="/usr/local/bin/anarchos"
INVOCATION_SCRIPT="$SCRIPTPATH/invocation.sh"

if [ -x $INVOCATION_PATH ]; then
	echo -e "\t[x] updating invocation script at $INVOCATION_PATH"
	rm $INVOCATION_PATH
	sync
else
	echo -e "\t[x] installing invocation script at $INVOCATION_PATH"
fi

cp $INVOCATION_SCRIPT $INVOCATION_PATH
sed -i -e "s#SCRIPTPATH=#SCRIPTPATH=$SCRIPTPATH#" $INVOCATION_PATH # add anarchos script path to invocation script
chmod 777 $INVOCATION_PATH

echo -e "\t[x] invocation script registered"
