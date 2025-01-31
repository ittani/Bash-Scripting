#!/bin/bash

# Learning bash condition handling
# Taking input from the user

echo "Enter the name of your continent"
read name


if [ $name = "Africa"  ]
then 
    echo "The continent is Africa!"
fi

# we are comparing strings

