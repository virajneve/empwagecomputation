#!/bin/bash -x

isPresent=1;
randomCheck=$((RANDOM%2))

if [ $isPresent -eq $randomCheck ] # -eq : ==
then
        echo "Employee is Present"
else
        echo "Employee is Absent";
fi 
