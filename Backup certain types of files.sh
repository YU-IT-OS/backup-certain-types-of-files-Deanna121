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

echo "file extention is: $fileExtention"
echo "target dir is: $targetDir"
echo "backup directory is: $destinationDir" 

# figure out how the user can tell me if they want quiet mode or normal mode

# test and see if the user has given me a q
# test to make sure the target directory exists
         
if [ ! -d "$targetDir" ]
then     
        echo "$targetDir does not exist, please enter a valid target dir"
        exit 0;
fi           
      
# figure out find command for removing the file 

# find [targetdir] [name|type|date|lastmodified] -exec [command you want to execute on the found files] {} \; 
    
find "$targetDir"  -name *"$fileExtention" -exec cp {} $destinationDir \;
    
