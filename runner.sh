#!/bin/bash
array1=("script" "script" "script" "script" "script")
array2=("script" "script" "script" "script" "script")
array3=("script" "script" "script" "script" "script" "script")
while true
do
    echo "Press Ctrl+C to exit"
    echo -n "Enter assignment number: "
    read ass_no
    echo -n "Enter problem number: "
    read prob_no
    case $ass_no in
        1)
        array_val=${array1[$(( $prob_no - 1 ))]}
        ;;
        2)
        array_val=${array2[$(( $prob_no - 1 ))]}
        ;;
        3)
        array_val=${array3[$(( $prob_no - 1 ))]}
        ;;
        
        *)
        echo "Invalid assignment number"
        exit 1
        ;;
    esac
    ./assignment${ass_no}/${array_val}${prob_no}.sh
done
