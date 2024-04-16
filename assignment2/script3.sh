#Write a shell script which displays vendor_id,model name ,cpu MHz,cache size information about the processor present in your computer.
#hint :most of this information can be obtained about each directory by reading the file /proc/cpuinfo

#!/bin/bash
echo "Vendor Id:"
grep vendor_id /proc/cpuinfo | uniq 
echo "Model Name:"
grep model\ name /proc/cpuinfo | uniq
echo "CPU MHz:"
grep cpu\ MHz /proc/cpuinfo | uniq
echo "cache size:"
grep cache\ size /proc/cpuinfo | uniq

