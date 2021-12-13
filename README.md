# Backup Certain Types of Files Script

Upload `final.sh` to github, remember that `final.sh` must print a usage summery if it is not run with the appropriate number of arguments.

Do not upload your script until it is 100% complete and passes all of your personal tests.  This is a verification environment, not a testing environment, if you have questions, please let me know!


## Specifications
This script takes three arguments: a file extension, an origin directory, and a destination directory. It recursively searches the origin directory for files with the specified file extension and backs them up to the destination directory. I recommend using the Linux find command with the -exec option to accomplish the meat of this functionality in your script.
  
