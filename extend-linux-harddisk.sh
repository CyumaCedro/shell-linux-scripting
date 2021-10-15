#!/bin/bash
echo "Hello World"
NAME="Mugabo Shyaka"
AGE=28
COMPANY="O'GENIUS Priority ltd."

echo "Hello, $NAME   Your age is $AGE, from company ${COMPANY}"
#Making a file executable sudo chmod +x extend-linux-harddisk.sh

#See all volumes on the disk
#df -h
#lsblk
#Check the portion of the disk
# ls -l /folderdisk
# Unmount the part of the disk
# sudo unmount /folderdisk

#Read from the system input
echo 'Enter you age:'
read x_in
echo "You have entered: $x_in"

echo "Enter Your Name: "
read x
echo "Welcome ${x}!"
#Read password from file
read -s -p "Enter a Password: " x
echo "Your password is: $x"
#More variables
echo "What cars do you like?"

read car1 car2 car3

echo Your first car was: $car1
echo Your second car was: $car2
echo Your third car was: $car3

#Read from file line by line
input="sample.txt"
while IFS= read -r line
do
  echo "$line"
done < "$input"

#Passing in arguments
echo "First arg: $1"
echo "Second arg: $2"

#Start lampp
#sudo /opt/lampp/lampp start

#Login into mysql with root user
#sudo /opt/lampp/bin/mysql -uroot  && SET GLOBAL sql_mode = '';

#SET MYSQL Mode
#SET GLOBAL sql_mode = '';
#---------------------------------------------
if [[ ! -f /tmp/lampp-startstop ]] ; then             # if temp file doesn't exist
 echo 0 > /tmp/lampp-startstop 2>&1                   # create it and write 0 in it
fi

                                                      ##IF NOT RUNNING
if [ "`cat /tmp/lampp-startstop`" == "0" ] ; then     # if temp file contains 0
 sudo /opt/lampp/lampp start                          # start lampp
 echo 1 > /tmp/lampp-startstop 2>&1                   # write 1 in the temp file
 notify-send "Lampp" "Program started." -i xampp      # send a notification
 exit 0                                               # and exit
fi

                                                      ##IF RUNNING
#if [ "`cat /tmp/lampp-startstop`" == "1" ] ; then     # if temp file contains 1
 #sudo /opt/lampp/lampp stop                           # stop lampp
 #echo 0 > /tmp/lampp-startstop 2>&1                   # write 0 in the temp file
 #notify-send "Lampp" "Program stopped." -i xampp      # send a notification
 #exit 0                                               # and exit
 # RUN AN SQL QUERY TO SET MODE
 #--- sudo mysql -u USER -pPASSWORD -h HOSTNAME -e "SQL_QUERY"
 #---  sudo /opt/lampp/bin/mysql -u root -p$PASS -e "SET GLOBAL sql_mode = '';"
#fi

if [[ ! -f /tmp/lampp-mysql-mode-emty-set ]] ; then             # if temp file doesn't exist
 echo 0 > /tmp/lampp-mysql-mode-emty-set 2>&1                   # create it and write 0 in it
fi

if [ "`cat /tmp/lampp-mysql-mode-emty-set`" == "0" ] ; then     # if temp file contains 1
 sudo /opt/lampp/bin/mysql -u root  -e "SET GLOBAL sql_mode = '';"
 echo 1 > /tmp/lampp-mysql-mode-emty-set 2>&1                   # write 0 in the temp file
 notify-send "Lampp" "Mysql  general mode activated." -i xampp      # send a notification
 #  exit 0                                               # and exit
 # RUN AN SQL QUERY TO SET MODE
 #--- sudo mysql -u USER -pPASSWORD -h HOSTNAME -e "SQL_QUERY"
 #---  sudo /opt/lampp/bin/mysql -u root -p$PASS -e "SET GLOBAL sql_mode = '';"

fi
