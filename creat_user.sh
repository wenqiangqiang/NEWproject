#!/bin/bash
#创建20个以user开头的用户，并设置密码为user+5个随机数

for i in `seq 1 20`
do
    pwd=$(cat /dev/urandom|head -1|md5sum|head -c 5)   #获取5位随机数
    useradd user$i                                     #创建用户
    echo "user$i$pwd"|passwd --stdin user$i            #为用户设置密码
    echo "user$i user$i$pwd" >> userpasswd.txt
done
