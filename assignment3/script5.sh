for file in *.sh;do
	if [ -f "$file" ];then 
		mv "$file" "${file%.sh}.exe" 
		echo "The file $file was renamed to ${file%.sh}.exe"
	fi
done

