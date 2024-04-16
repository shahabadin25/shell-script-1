#write a shell script which reads a input file that contains three integers in each line. the script should display the sum of all integers 
#in the same line

#!/bash/bin

#check if the input file is provided or not
if [ $# -ne 1 ];
then
#checks the numbers of arguments provided to the script is != 1. # represents the arguments passed to script
echo "Usage: $0 input_file.txt"
exit 1
fi

#check if the input file exits
if [[ ! -f "$1" ]];
then
#checks whether the file exits or not
echo "Error: Input file '$1' not found ."
exit 1
fi

#Read each line from the input file
while IFS= read -r line;
do
read -r num1 num2 num3 <<< "$line"
#starts a loop that reads each line from the input file . IFS = ensures that leading and trailing whitespaces are #preserved  and -r prevents backslash escapes from being interpreted.
#splitting the line into 3 integers

#calculate the sum of integers
sum=$((num1 +num2 +num3))
 #display the sum
echo "sum of integers in the line: $sum"
done < "$1"  #marks the end of the loop and <"$1" redirects the contents of the input files ('$1') to the "while" loop


