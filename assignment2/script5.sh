# write a shell script to display a summary of disk space usage for each directory argument (and any subdirectories),both terms of bytes
#and kilobytes or mega bytes [du -b]

#!/bin/bash
echo "directory name"
read d
echo  "list of directories in bytes "
du -b $d #-b for bytes
echo "list of directories in kilobytes "
du -k $d #-k for kilobytes
 echo "list of directories in megabytes "
du -m $d #-k for megabytes
