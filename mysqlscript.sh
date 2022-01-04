#!/bin/sh
ls / |grep -i flag_completed
if [ $? -ne 0 ]
then
mysql < /db-load-script.sql
touch /flag_completed
echo "Data uploaded" >> /mysqlscript.log
else
echo "script already run once" >> /mysqlscript.log
fi
