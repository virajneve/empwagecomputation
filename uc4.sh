#!/bin/bash -x

isFullTime=1;
ispartTime=2;
perHourSalary=100;
empCheck=$((RANDOM%3));

case $empCheck in
        $isFullTime)
                empHr=8
                ;;
        $isPartTime)
                  empHr=5
                ;;
            *)
                   empHr=0
                ;;
esac

salary=$(($empHr*$perHourSalary));

