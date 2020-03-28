#! /bin/bash

#read var
#echo var = $var #結果の表示

#read var1 var2 var3
#echo var1 = $var1 var2 = $var2 var3 = $var3

#read -p '変数を入力してください: var = ' var
#echo var = $var

#read -sp 'password:' password
#echo password = $password

#read -a names
#echo names = ${names[@]}

read -p '値を入力してください:' var
echo var = $var >> sample.text

