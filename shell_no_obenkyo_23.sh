#!/bin/bash

if [ $# -ne 1 ];
then
  echo "間違ってんで〜"
  exit 1
fi

function stop_process(){
  rm mumumu.lock
  exit 0
}

if [ $1 = 'start' ];
then
  if [ -f 'mumumu.lock' ];
  then
    echo 'もう動いてるよ！'
    exit 0
  else
    echo $$ > mumumu.lock
    trap "stop_process" 2 15
    for i in `seq 1 1000`;
    do
      echo $i >> output_$$.txt
      sleep 1
    done
    rm mumumu.lock
    exit 0
  fi
elif [ $1 = 'stop' ];
then
  if [ -f 'mumumu.lock' ]
  then
    PID=-1
    while read p;
    do
      PID=$p
    done < 'mumumu.lock'
    kill -15 $PID
  else
    echo '動いてへんで！'
    exit 0
  fi
elif [ $1 = 'status' ];
then
  if [ -f 'mumumu.lock' ];
  then
    PID=-1
    while read p;
    do
      PID=$p
    done < 'mumumu.lock'
    echo 動いとるプロセスのpidは $PID やで〜
  else
    echo '動いてへんで！'
  fi
else
  echo 'そんな要求無理だよ〜〜う;;'
  exit 1
fi
