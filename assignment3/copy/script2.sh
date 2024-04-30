# write shell script to find out how many file and directory are there in the current directory.also list files and directory names #separately
 
#!/bash/bin
`cd`
filecount=0
dircount=0
for file in *;
do
	if [ -f "$file" ];
	then 
	filecount=$((filecount+1))
echo "file: $file"
	fi
	if [ -d "$file" ];
	then 
	dircount=$((dircount+1))
	fi
done
	if [ $filecount -eq 0 ] && [ $dircount -eq 0 ];
	then 
		echo "no files or directories have been found"
	else 
		echo "number of files in current directory: $filecount"
		echo "number of directories in the current directory : $dircount"
	fi

