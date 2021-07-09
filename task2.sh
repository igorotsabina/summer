#!/bin/bash


#create file name
echo "Create dump of moodle database"
datetime='date +%d%m%Y_%H%M'
dump="mysqldump -u moodleuser -pJwf,syf_86 moodle > /home/myproject/moodle_$datetime.sql"
if $dump
then
echo "Backup cucceeded";
exit 2
else
echo "Backup failed";
fi

# check if mysql is running
mysql=$(systemctl status mysql | grep running)
 if [ ${#mysql} -eq 0 ]
then 
    echo "The MySQL is not running";
    exit 1
else
    echo "The MySQL is running";
fi
