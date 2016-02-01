#!/bin/bash
if [ "$(ls -A /var/lib/mysql)" ]; then
  echo 'Starting MySQL...'
  mysqld_safe
else
  echo 'Empty MySQL Directory. Installing...'
  mysql_install_db
  echo 'Setting password...'
  service mysql start
  mysqladmin -u root password $mysqlpassword
  service mysql stop
  echo 'Starting MySQL...'
  mysqld_safe
fi
