#!/bin/bash

function hahaha(){
  echo 'はっはっは〜〜〜〜〜〜'
  echo $1
}

function set_tsubuyaki(){
  local tsubuyaki=$1
  echo function: $tsubuyaki
}

hahaha '今日も元気だぜえ〜〜〜'

tsubuyaki='ねむむ'
echo before:$tsubuyaki

set_tsubuyaki '起きろお'
echo after:$tsubuyaki
