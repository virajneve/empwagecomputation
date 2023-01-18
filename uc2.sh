#!/bin/bash -x

isPresent=1;
randomCheck=$((RANDOM%2))

if [ $isPresent -eq $randomCheck ] # -eq : ==
then
        perHourSalary=100;
        empHr=8;
        salary=$(($empHr8$perHourSalary))
else
        salary=0;
fi 
