#!/bin/bash



USERID=$(id -u)
#echo "user ID is: $USERID"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "commaand is...failed"
        exit 1
    else
        echo "Command is Sucess"
    fi        
}



if [ $USERID -ne 0 ]
then 
    echo "please run this script with root priveleges"
    exit 1
 fi   

 #dnf install git -y

 dnf list installed git 
 if [ $? -ne 0 ]
 then
     echo "Git is not installed, going to insatll it.."
     dnf install git -y
     VALIDATE $? "Installing Git"
 else
     echo "Git is already installed, nothing to do.."
 fi 

 dnf list installed mysql
 if [ $? -ne 0 ]
 then
     echo "Mysql is not installed.. going  to install"
     dnf install mysql -y
     VALIDATE $? "Installing MySQL"
else
    echo "Mysql is already installed..nothing to do"
fi                 
