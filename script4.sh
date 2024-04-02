#write a shell script which accepts a 5 digit number and prints the reverse of it.
#!/bin/bash
echo "enter a 5 digit number"
read num
sum=0
while [ $num -ne 0 ]
do
r=$(( num%10 ))
echo -n $r
num=$(( num/10 ))
done
