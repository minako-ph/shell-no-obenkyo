#!/bin/bash

# while,break,continue

n=0

while (( $n < 10 ));
do
  echo $n
  sleep 1
  if [ $n -eq 5 ];
  then
    continue
  fi
  n=$(( n + 1 ))
done
exit 0

read -p '文字列を入力してください：' var

while [ $var != 'exit' ];
do
  echo '入力した値は'  $var
  echo 'exitで処理を終了'
  read -p '文字列を入力してください：' var
done
