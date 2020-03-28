#!/bin/bash

i=1
until (( $i > 100 ));
do
  if [ $(( i % 3 )) -eq 0 ] && [ $(( i % 5 )) -eq 0 ];
  then
    echo $i FizzBuzz
  elif [ $(( i % 3 )) -eq 0 ];
  then
    echo $i Fizz
  elif [ $(( i % 5 )) -eq 0 ];
  then
    echo $i Buzz
  else
    echo $i
  fi

  i=$((i=i+1))
done

exit 0 

i=1
while (( $i <= 100 ))
do
  if [ $(( i % 3 )) -eq 0 ] && [ $(( i % 5 )) -eq 0 ];
  then
    echo $i FizzBuzz
  elif [ $(( i % 3 )) -eq 0 ];
  then
    echo $i Fizz
  elif [ $(( i % 5 )) -eq 0 ];
  then
    echo $i Buzz
  else
    echo $i
  fi

  i=$((i=i+1))
done
