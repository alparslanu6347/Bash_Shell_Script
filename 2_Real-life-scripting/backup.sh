#!/bin/bash

`tar cvf /home/backup/backup.tar /etc/var`

`find backup.tar.gz -mtime -1 -type f -print &> /dev/null`

`gzip /home/backup/backup.tar`

if [ $? -eq 0 ]
then
	
	echo "Backup was created"
	echo
	echo "Archiving backup"
	scp /tmp/backup.tar.gz root@192.168.1.x:/path
else
	echo "Backup Failed"
fi

ls -lts /home/backup/
