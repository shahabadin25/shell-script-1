#The PATH variable is an environment variable that contains an ordered list of paths that LINUX will search for executables when running a command.Write a shell script to display all the directories in the PATH variable in a simple way i.e one line per directory .In addtion ,display information about each directory ,such as permissions and the modification times.
#!/bin/bash
IFS=":" 
	read -r -a f<<<"$PATH"
for dir in "${f[@]}"; do
if [ -d "$dir" ];
then 
permissions=$(stat --format "%A" "$dir") #stat gives info about file and file system
echo "permissions: $permissions"
modification=$(stat --format "%y" "$dir") #--format adds a newline at the end of the output 
echo "last modified : $modification"
fi
echo "----------------------------------"
done
