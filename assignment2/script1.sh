#Write a shell script which ,for all files is present directory displays whether is a regular file or directory
#!/bin/bash
for file in *; #loops through all the files present in the current directory
do
if [ -f "$file" ]; then #check if the current file is a regular directory

echo "$file is a regular directory"

elif [ -d "$file" ]; then 
echo "$file is a directory."
fi
done 
