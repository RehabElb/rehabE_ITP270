
#!/bin/bash

#print "hello Codeacademy"

echo "Hello Codeacademy!"

phrase="Hello Everyone!"

echo $phrase 


first_g="nice to meet you!"
later_g="how are you?"
greeting=-1

if [ $greeting -lt 1 ]
then
   echo $first_g
else
   echo $later_g
fi


echo "is it raining? [y/n]"
read is_rain
if [ $is_rain == "y" ]
then
   echo "stay at home"
else
   echo " go out"
fi
