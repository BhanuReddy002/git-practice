#!/bin/bash
USERID=$(id -u)
#echo "user ID is: $USERID"

R="\e[31m"
G="\e[32m"
N="\e[0m"

CHECK_ROOT(){
     if [ $USERID -ne 0 ]
then 
    echo "please run this script with root priveleges"
    exit 1
 fi     
}


VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2 is...$R FAILED $N"
        exit 1
    else
        echo "$2 is... $G SUCCESS $N"
    fi        
}

CHECK_ROOT

#sh lops2.sh git mysql postfix ngnix
for package in $@    # $@ refers to all arguments passed to it
do 
  echo $package
done  

 