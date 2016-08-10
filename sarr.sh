#!/bin/bash

##Help Menu
helpMENU () {
cat <<'endmsg'
Add the directory path of .sm files to the first argument
endmsg
}

##Null Argument Blocker
if [[ $# -eq 0 ]]; then
  helpMENU
  exit 0
fi

##Variables
SEARCH=.mp3
REPLACE=.ogg
SMFILES=($(find $1 -name '*.sm'))

##Main Script
for SMs in ${SMFILES[@]}
do
  sed -i '/s/.mp3/.ogg/g' $SMs
done
exit 0
