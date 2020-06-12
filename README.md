# bash-scripts
This repo contains the bash scripts running using putty or ssh. 
1. deleteFilesFromS3.sh -- This script takes in 2 arguments, s3 folder-name and number of days. This script will delete the files older than the number of days as specified by the user.
E.g.
$ ./deleteFilesFromS3.sh arvind-sample-bucket/some-folder 30
above command will recursivelly delete all files older than 30 days from 'some-folder' folder name.
