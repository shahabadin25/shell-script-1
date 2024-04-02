#WAP which accepts length and breadth of a rectangle and calculate the area and perimeter of the rectangle
#!/bin/bash
echo "Enter length and breadth of a rectangle"
read l b
area=$(( $l * $b ))
perimeter=$(( ($l + $b) * 2 ))
echo "$area is the area of the rectangle and  $perimeter is the perimeter of the rectangle"
