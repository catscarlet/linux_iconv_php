# linux_iconv_php
自己写的一个shell下使用iconv把php文件从gb2312批量转换成utf8的脚本，由php和shell组成

目前执行效率还是很低的。
主要实现：

gb2312toutf8.sh负责使用find收集目录下的php文件路径和文件名，并传递给main.php

main.php处理并生成各个php文件的所在目录，并返回给gb2312toutf8.sh

gb2312toutf8.sh在当前目录下新建目录utf8，并创建每个文件对应的子目录；
使用iconv将php文件从gb2312转换为utf8，并临时保存在linux的tmp目录下；
将新生成的文件移动到utf8下对应的目录




没啥技术含量，就是本来可以用shell全部完成的东西，想拿php练下手而已。
