#!/bin/bash



USERID=$(id -u)
#echo "user ID is: $USERID"



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
     if [ $? -ne 0 ]
     then
         echo "Git installation is not success.. check it"
         exit 1
     else
        echo "Git installation is success"
     fi       
 else
     echo "Git is already installed, nothing to do.."
 fi 

 dnf list installed mysql
 if [ $? -ne 0 ]
 then
     echo "Mysql is not installed.. going  to install"
     dnf install mysql -y
     if [ $? -ne 0 ]
     then 
        echo "Mysql installation is failure.please check it"
        exit 1
     else
        echo "Mysql is installed successfully"
     fi
else
    echo "Mysql is already installed..nothing to do"
fi                  

