#!/bin/bash -x

isFullTime=1;
isPartTime=2;
perHourSalary=100;
totalSalary=0;
maxHourInMonth=50;
noofWorkingDays=20;

#variables
totalEmpHr=0;
totalworkingDays=1;

while [[ $totalEmpHr -le $maxHourInMonth && $totalworkingDays -lt $noofWorkingDays ]]
do
 empCheck=$((RANDOM%3));
 case $empCheck in
        $isFullTime)
                empHr=8 ;;
        $isPartTime)
                empHr=5 ;;
            *)
                empHr=0 ;;
 esac
 totalEmpHr=$(($totalEmpHr+$empHr));
 if [ $totalEmpHr -gt $maxHourInMonth ]
 then
       totalEmpHr=$(($totalEmpHr-$empHr));
       break;
 fi
 salary=$(($perHourSalary*$totalEmpHr));
 totalSalary=$(($totalSalary+$salary));
 ((totalWorkingDays++))
done


