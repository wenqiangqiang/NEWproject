[root@localhost ~]# cat a.list 
user1 123456
user2 234566
user3 ssweer3

[root@localhost ~]# cat 9.sh
#!/bin/bash
#�����û��б���������������û�
#˼·����whileѭ��ÿһ��
while read line
do
    user=`echo $line|awk '{print $1}'`   #��awk�ָ���û���
    passwd=`echo $line|awk '{print $2}'` #��awk�ָ������
    
    echo "USER:$user PASSWORD:$passwd"   #����ָ���û�������
    useradd $user                        #�����û�
    echo "$passwd"|passwd --stdin $user  #��������
done < a.list