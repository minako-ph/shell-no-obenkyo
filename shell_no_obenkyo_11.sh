#!/bin/bash

ls

read -p 'ファイル名を入力して下さい：'file_name
read -p 'ファイルに追記する値を入力してください：'input_val

if[ -f $file_name ];
then
  echo $inpyt_val >> $file_name;
else
  echo 'ファイルが存在しません';
fi

