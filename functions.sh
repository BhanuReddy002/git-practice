#!/bin/bash



USERID=$(id -u)
#echo "user ID is: $USERID"

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
        echo "$2 is...failed"
        exit 1
    else
        echo "$2 is Sucess"
    fi        
}

CHECK_ROOT




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
