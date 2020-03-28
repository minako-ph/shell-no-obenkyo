#!/bin/bash

function sum(){
  sum=0
  while read p;
  do
    sum=$(( sum + p ))
  done < $1
  echo SUM: $sum
  exit 0
}

function avg(){
  sum=0
  count=0
  while read p;
  do
    sum=$(( sum + p ))
    count=$(( count + 1 ))
  done < $1
  echo AVG: $(( sum / count ))
  exit 0
}

function min(){
  min=101
  while read p;
  do
    if [ $min -gt $p ];
    then
      min=$p
    fi
  done < $1
  echo MIN: $min
  exit 0
}

function max(){
  max=0
  while read p;
  do
    if [ $max -lt $p ];
    then
      max=$p
    fi
  done < $1
  echo MAX: $max
  exit 0
}

read -p 'ファイル名を入力しろ〜〜：' fh
if [ -f $fh ];
then
  read -p 'sum, avg, min, max, exit：' command
  if [ $command = 'sum' ];
  then
    sum $fh
  elif [ $command = 'avg' ];
  then
    avg $fh
  elif [ $command = 'min' ];
  then
    min $fh
  elif [ $command = 'max' ];
  then
    max $fh
  elif [ $command = 'exit' ];
  then
    exit 0
  else
    echo 'そんなコマンドあらへんで'
    exit 1
  fi
else
  echo 'そんなファイルあらへんがな'
fi
