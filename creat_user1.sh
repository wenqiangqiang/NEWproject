[root@localhost ~]# cat a.list 
user1 123456
user2 234566
user3 ssweer3

[root@localhost ~]# cat 9.sh
#!/bin/bash
#根据用户列表和密码批量创建用户
#思路是用while循环每一行
while read line
do
    user=`echo $line|awk '{print $1}'`   #用awk分割出用户名
    passwd=`echo $line|awk '{print $2}'` #用awk分割出密码
    
    echo "USER:$user PASSWORD:$passwd"   #输出分割的用户和密码
    useradd $user                        #创建用户
    echo "$passwd"|passwd --stdin $user  #创建密码
done < a.list