#!/bin/bash
while true
do
echo "choose an option"
echo "1)convert .sh  to .exe"
echo "2)convert .exe to .sh"
read ans
case $ans in
1)
for file in ./assignment3/copy/*.sh;do
	if [ -f "$file" ];then 
		mv "$file" "${file%.sh}.exe" 
		echo "The file $file was renamed to ${file%.sh}.exe"
	fi
done
;;

2)
for file in ./assignment3/copy/*.exe;do
	if [ -f "$file" ];then 
		mv "$file" "${file%.exe}.sh" 
		echo "The file $file was renamed to ${file%.exe}.sh"
	fi
done
;;
*)
echo "wrong choice";
exit 1
;;
esac
done
