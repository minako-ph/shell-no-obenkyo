#!/bin/bash

# echo PID is $$
# sleep 100

function cleanup(){
  echo '割り込みコマンドや！！！'
  rm ./tmp_*.txt
  exit 1
}

function stop_15(){
  echo 'kill 15でストップしてやったぜどうだ！！！！！'
  exit 1
}

echo $$ > tmp_$$.txt

trap "cleanup" 2
trap "stop_15" 15

for i in `seq 1 100`;
do
  echo $i
  sleep 1
done
