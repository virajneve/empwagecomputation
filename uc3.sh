#!/bin/bash -x

isFullTime=1;
ispartTime=2;
perHourSalary=100;
randomCheck=$((RANDOM%3));

if [ $isFullTime -eq $randomCheck ] # -eq : ==
then
        empHr=8;
elif  [$ispartTime -eq $randomCheck ] # -eq : ==
then
        empHr=5;
else
        empHr=0;
fi 
salary=$(($empHr*$perHourSalary))

