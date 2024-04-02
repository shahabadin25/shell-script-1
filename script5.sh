#the /etc/passwd file stores user account information. It contains one entry per line for each user (user account) of the system .
#Each line contains seven fields which are separated by colon(:) symbol .The fields are 
# 1) Username 2) Password 3) User Id 4) Group Id 5) User Id info 6) Home Directory 7) Login shell
#write a shell script which accepts a user login name and displays detail information about the users are available  from the file  
#/etc/passwd
echo "enter a user login name "
read userName
#Grep, short for “global regular expression print”, is a command used for searching and matching text patterns in files contained in the #regular expressions.
user=$(grep  "^$userName:" /etc/passwd)
if [ -n "$user" ]; then #-z is used to check with null 
	IFS=":" 
	read -r -a f<<<"$user" 
    echo "User Name      --- ${f[0]}"
	echo "Password       --- ${f[1]}"
	echo "User Id        --- ${f[2]}"
	echo "Group Id       --- ${f[3]}"
	echo "User Id info   --- ${f[4]}"
	echo "Home Directory --- ${f[5]}"
	echo "Login shell    --- ${f[6]}"
else
	echo "the user doesn't exist"
fi

