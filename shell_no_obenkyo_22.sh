#!/bin/bash

select command in "list" "delate" "rename" "show" "exit"
do
  case $command in
  "list" )
    ls;;
  "delate" )
    ls
    read -p "あんたが消したいファイルはナンジャラホイ：" file_name
    if [ -f $file_name ];
    then
      rm $file_name
    fi;;
  "rename" )
    ls
    read -p "お主が名前を変えたいファイルはどれじゃ：" file_name
    read -p "どんな名前にしたいのかい：" new_file_name
    if [ -f $file_name ];
    then
      mv $file_name $new_file_name
    fi;;
  "show" )
    ls
    read -p "どのファイルの中を覗き見したいのかい：" file_name
    cat $file_name;;
  "exit" )
    break;;
  esac
done
