#!/bin/bash
#����20����user��ͷ���û�������������Ϊuser+5�������

for i in `seq 1 20`
do
    pwd=$(cat /dev/urandom|head -1|md5sum|head -c 5)   #��ȡ5λ�����
    useradd user$i                                     #�����û�
    echo "user$i$pwd"|passwd --stdin user$i            #Ϊ�û���������
    echo "user$i user$i$pwd" >> userpasswd.txt
done