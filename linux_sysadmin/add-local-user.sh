#!/bin/bash

#This script creates a new user on the local system. Then, the script will display the user information.
#The user will provide the username, fullname and the password.



#The script should be executed by the root user.

if [ "${UID}" -ne 0 ] 
then
  echo "please run with sudo or as root."
  exit 1 
fi


#Get an input from the user to prompt the username

read -p "Enter the username: " USER_NAME



#Get an input from the user to prompt the full name

read -p "Enter the full name: " COMMENT



#Get an input from the user to prompt the password

read -p "Enter the password: " PASSWORD



#Adding the user to the system

useradd -c "${COMMENT}" -m "${USER_NAME}"



#Check if the last command got executed with exit code 0 or not, if not exit the programm.

if [ "${?}" -ne 0 ]
then
   echo " The account could not be created"
   exit 1
fi



#Adding the user's password

usermod -p "${PASSWORD}" "${USER_NAME}"



#Check if the last command got executed with exit code 0 or not, if not exit the programm.

if [ "${?}" -ne 0 ]
then
   echo " The password for the account could not be set. "
   exit 1
fi




#Display the username, password and the host name.

echo "User name: "
echo "${USER_NAME}"

echo "Password: "
echo "${PASSWORD}"

echo "Host: "
echo "${HOSTNAME}"


exit 0 
