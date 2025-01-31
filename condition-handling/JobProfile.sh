#!/bin/bash

# creating a job profile 

echo "Which postion are you applying for?"

read position

if [ $position = "developer" ] || [ $position = "Developer" ] 
then
    echo "We do have a developer position open for you"
    echo  "Would you like to apply?"
	read answer
            if [ $answer = "yes" ]
            then
                echo "What's your current rate per hour?"
                read rate
                    if [ $rate -gt 80 ]
                    then 
                    echo "The rate is too high for this role. let's connect and disscuss what we can offer."
            
                    fi

            fi


elif [ $position = "tester" ] || [ $position = "Tester" ]
then
	echo "We do have a software tester position open for you."
	echo  "Would you like to apply?"
	read answer
            if [ $answer = "yes" ]
            then
                echo "What's your current rate per hour?"
                read rate
                    if [ $rate -gt 70 ]
                    then 
                    echo "The rate is too high for this role. let's connect and disscuss what we can offer."
            
                    fi

            fi


elif [ $position = "manager" ] || [ $position = "Manager" ]
then
    echo "We have a software manager postion open for you"
    echo  "Would you like to apply?"
	read answer
            if [ $answer = "yes" ]
            then
                echo "What's your current rate per hour?"
                read rate
                    if [ $rate -gt 120 ]
                    then 
                    echo "The rate is too high for this role. let's connect and disscuss what we can offer."
            
                    fi

            fi


else
	echo "This position is not available"
fi

