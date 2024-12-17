#!/bin/bash

#dnf install git -y

USERID=$(id -u)
#echo "user ID is: $USERID"

if [ $USERID -ne 0 ]
then 
    echo "please run this script with root priveleges"
    exit 1
 f1   

 dnf install git -y