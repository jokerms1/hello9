#!/bin/bash

a=0;
b=0;
d="student"
for  c in `cat log.log|awk '{if($1=="alter")print $2}'`
do
    if [ $c == $d ]
    then
        a=$((++a));
    else
        b=$((++b));
    fi
done
echo "修改学生信息的次数为:$a";
echo "修改课程信息的次数为:$b";
read -p "给定学号,查找是否存在对该学号学生信息的修改记录:" x;
a=0;
b=0;
for d in `cat log.log|awk '{if($1=="alter"&&$2=="student")print $3}'`
do
    if [ $x -eq $d ]
    then
        a=$((++a));
    fi
done
if [ $a == $b ]
then
    echo "不存在对该学生的修该记录";
else
    echo "存在对该学生的修改记录";
fi
read -p "给定课程号,查找是否存在对该课程信息的修改记录:" x;
a=0;
b=0;
for d in `cat log.log|awk '{if($1=="alter"&&$2=="class")print $3}'`
do
    if [ $x -eq $d ]
    then
        a=$((++a));
    fi
done
if [ $a == $b ]
then
    echo "不存在对该课程信息的修该记录";
else
    echo "存在对该课程信息的修改记录";
fi
