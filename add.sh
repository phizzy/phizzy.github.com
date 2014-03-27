#!/bin/sh

if [ $# -lt 1 ]
then
    echo "请输入新建文章的名称，如：2014-04-03-文章"
    exit 1
fi

current=`date '+%Y-%m-%d'`
echo $1 | grep -q '^[0-9]\{4\}-[0-9]\{2\}-[0-9]\{2\}'

if [ $? -eq 0 ]
then
    file="$1"
else
    file="$current"-"$1"
fi

if [ -f "_posts/$file.markdown" ]
then
    echo "文章$file重名"
    exit 1
fi

mkdir -p "images/$file/"


now=`date '+%Y-%m-%d %H:%M:%S'`
echo "---\nlayout: post\npostname: $file\ndate: $now\ntitle: "Title"\ncategories: blog\ntags: slide\nslideImage: \n---" > _posts/"$file".markdown
