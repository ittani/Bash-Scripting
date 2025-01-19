!#/bin/bash

#This is a learning exercise

echo "enter your age?"

read num

echo "You are " $num " years old"

#Adding time and date
now="$(date)"

printf "Current date and time: %s \n" "$now"

printf "\n"

#Adding two values together

printf "We gonna ask you to enter two number and add them together \n"

read -p "Enter first number: " num1
read -p "Enter second number: " num2

printf "\n"

# Perform addition
sum=$((num1 + num2))

echo "The total of the above is " $sum
