#!/bin/bash
set -e

echo `service mysql status`
 
echo '1.starting mysql....'

service mysql start
sleep 3
echo `service mysql status`
 
echo '2.starting import data'

mysql < /mysql/schema.sql
echo '3.import data done'
 
sleep 3
echo `service mysql status`

echo '4.starting update password'
#mysql < /mysql/privileges.sql
echo '5.update password done'
 
#sleep 3
echo `service mysql status`
echo `mysql stared already and import data successful`
 
tail -f /dev/null
