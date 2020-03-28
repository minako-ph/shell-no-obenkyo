#!/bin/bash

# for

for command in ls pwd date;
do 
  echo $command
  $command
done

for var in `seq 1 2 10`;
do
  echo $var
  if [ $var -eq 3 ];
  then
    continue
  fi
  echo $var
  sleep 0.5
done
