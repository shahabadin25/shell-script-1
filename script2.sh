#write a shell script which accepts basic salary of an employee and calculates net salary and displays the salary slip.
#!/bin/bash
echo "accept the monthly salary of an employee"
read salary
echo "yearly salary $(( 12*$salary ))"
echo "accept reduction %"
read d
net_salary=$(( 12*salary - 12*salary*$d/100 ))
echo "salary slip $net_salary"
