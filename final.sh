#!/bin/bash


if [ -z $3 ]
then
        echo "Usage: script [file extension] [target directory] [backup directory] 
        Example: script .text /home/arnold /backup 
        this is backs up files from a certain directory to anohter 
        "
exit 0;
fi

fileExtention="$1"
targetDir="$2"
destinationDir="$3"

echo "fileExtention is: $fileExtention"
echo "targetDir is: $targetDir"
echo "backupDirectory is: $destinationDir" 



if [ ! -d "$targetDir" ]

then
        echo "$targetDir" ]
        exit 0;
fi



find $targetDir  -name *$fileExtention -exec cp {} $destinationDir \;
