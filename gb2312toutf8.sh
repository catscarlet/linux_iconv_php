#!/bin/bash
OUTPUT=utf8
#mkdir -p $OUTPUT
for i in `find . -name '*.php'` ;

do
#echo "Found file "$i "!!!";\
newpath=`php main.php $i`
#echo "The new path is "$OUTPUT/$newpath
mkdir -p $OUTPUT/$newpath
iconv -c -f gb2312 -t utf8 $i -o /tmp/iconv.tmp;
mv -fv /tmp/iconv.tmp ./$OUTPUT/$i;
done
