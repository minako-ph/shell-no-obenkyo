#! /bin/bash

var=$1
if [ $var = 'blue' ];
then
	echo '進め';
elif [ $var = 'red' ];
then
	echo '止まれ';
else
	echo '気いつけてやあ〜';
fi

var2=$2
if [ $var2 -eq 10 ];
then
	echo '入力した数値は10です';
elif [ $var2 -lt 20 ];
then
	echo '入力した値は20より小さいです';
elif [ $var2 -ge 60 ];
then
	echo '入力した値は60以上です';
else
	echo '20以上60未満';
fi
