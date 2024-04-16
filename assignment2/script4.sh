#Write a shell script to show your home directory ,operating system type coversion,release number kernel version and current path setting.
#Hint ":use uname command or use content of /proc/sys/kernel/osrelease file  

#!/bin/bash
echo  " Home Directory: $HOME"
echo -n "operating system type conversion: " 
uname -o
echo -n "kernel version: " 
uname -v
echo -n "current path setting: $PATH"
#-n for no newline
