# Stop the server
killall zabbix_server

# Take the MySQL variables out of the conf and make them variables
eval $(grep "^ *DB" /etc/zabbix/zabbix_server.conf | sed -e 's/=/="/' -e 's/ *$/"/')

# Dump the database
/usr/bin/mysqldump -u$DBUser -p$DBPassword $DBName > zabbix_server.sql

# Start Zabbix server again
/usr/local/sbin/zabbix_server
