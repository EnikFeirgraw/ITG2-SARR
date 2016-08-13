#!/bin/bash
#Created by EnikFeirgraw for the Rhythm Gaming Community

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
IFS=$'\n' #Sets newline as the array seperator, instead of spaces.
set -f
SMFILES=($(find $1 -name '*.sm')) #Finds files from the first given argument

##Main Script
for SMs in ${SMFILES[@]}
do
  sed -i 's/.mp3/.ogg/g' $SMs #Replaces the .mp3 in .sm files with .ogg
#echo $SMs #Uncomment this line to test find results
done
exit 0
