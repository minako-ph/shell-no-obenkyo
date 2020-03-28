#!/bin/bash

# readonly

var=12
echo $var
readonly var

var=20
echo $var

function wahaha(){
  echo '上書きさせないじょ'
}

wahaha
readonly -f wahaha

function wahaha(){
 echo '上書きしてやるうううう'
}

wahaha
