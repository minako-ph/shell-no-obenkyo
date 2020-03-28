#!/bin/bash

var=$1
case $var in
  'blue' )
    echo 'GO';;
  'red' )
    echo 'STOP';;
  'yellow' )
    echo 'wait';;
  *)
    echo 'Wrong color';;
esac

var2=$2
case $var2 in
  [a-z] )
    echo 'a-zです';;
  [A-Z] )
    echo 'A-Zです';;
  [0-9] )
    echo '数値です';;
esac

