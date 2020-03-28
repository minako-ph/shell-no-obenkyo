#! /bin/bash

fruits=("banana" "apple" "grape")
fruits[3]='lemon'
unset fruits[2]
echo ${fruits[@]}
echo ${fruits[0]}
echo ${!fruits[@]}
echo ${#fruits[@]}
