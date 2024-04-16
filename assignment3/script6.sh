count=1
for file in *.sh;
do
	if [ -f "$file" ];
	then
		count=$((count+1))
	else
		echo "no file with '.sh' extension has been found "
	fi
done
echo " the number of shell scripts( with .sh extension ) present in the current directory is $count "
