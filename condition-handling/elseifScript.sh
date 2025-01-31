#!/bin/bash

# condition handling 

echo "Name the capital city of south africa"
read city


if [ $city != "pretoria" ] && [ $city != "cape-town" ] && [ $city != "venda" ]
then 
     echo "Incorrect input, please try again!"

else
     echo "Well done!"
fi
 
