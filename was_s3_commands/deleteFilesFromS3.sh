#!bin/bash
olderThanDate=`date --date="$2 days ago" +%Y-%m-%d`
echo files older than --$olderThanDate will be deleted
aws s3 ls --recursive s3://bucket-name/folder-name | while read -r line;
  do 
    creationDate='echo $line|awk'{print$1}'`
    if [[$creationDate < $olderThanDate]]
      then 
        fileName=`echo $line|awk{'print $4'}`
        echo $fileName
        if [[$fileName!=""]]
          then
            echo File name $filename with creation date $creationDate will be removed
            aws s3 rm s3://bucket-name/$fileName
        fi
    fi
  done;
