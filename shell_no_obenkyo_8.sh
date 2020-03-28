#! /bin/bash

#if [ -e 'sample' ]; #ディレクトリ or ファイル
#if [ -d 'sample' ]; #ディレクトリ
if [ -f 'sample' ]; #ファイル
then
	echo 'sampleが存在します'
        rm sample 
fi
