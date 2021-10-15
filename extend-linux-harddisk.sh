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