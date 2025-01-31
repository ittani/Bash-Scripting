#!/bin/bash

# Learning bash condition handling
# Taking input from the user

echo "************************************"
echo "RoseBank Solution ltd."
echo "************************************"

echo "Enter current cost of the company per hour e.g your rate per hour"
read cost


if [ $cost -le 400  ]
then 
    echo "Great!"
    echo  "how much would you like to be compesanted!"
     read comp
        if [ $comp -gt 400 ]
         then 
                 echo "This is beyond our budget."
                 echo "Our estimate budget is 400 per hour. Is this something you might consider?? "
                 read answer

                        if [ $answer = "yes" ]
                        then
                            echo "Thanks for the feedback. Please the following: "
                            read -p "1. name: " name
                            read -p "2. Email: " email
                            read -p "3. phone: "  phone

                            echo "Hi,  $name thank you for choosing us! "
                            echo "Please, view the email we sent to your $email"
                        else
                                echo "Thank you for your patience and interest, unfortunately we won't be able to accomodate you."

                        fi
        else
                echo "Thanks for the feedback. Please the following: "
                read -p "1. name: " name
                read -p "2. Email: " email
                read -p "3. phone: "  phone

                 echo "Hi,  $name thank you for choosing us! "
                 echo "Please, view the email we sent to your $email"
        fi

elif [ $cost -gt 400  ]
then 
    echo "This is beyond our budget."
    echo "Our estimate budget is 400 per hour. Is this something you might consider?? "
                 read answer

                        if [ $answer = "yes" ]
                        then
                            echo "Thanks for the feedback. Please the following: "
                            read -p "1. name: " name
                            read -p "2. Email: " email
                            read -p "3. phone: "  phone

                            echo "Hi,  $name thank you for choosing us! "
                            echo "Please, view the email we sent to your $email"
                        else
                                echo "Thank you for your patience and interest, unfortunately we won't be able to accomodate you."

                        fi

else
    echo "Invalid input"
fi



