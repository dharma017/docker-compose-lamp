#!/bin/bash
if [ "$(ls -A /var/lib/mysql)" ]; then
  echo 'Starting MySQL...'
  service mysql start
  echo 'MySQL Container'
  while true;
    do sleep infinity;
  done
else
  echo 'Empty MySQL Directory. Installing...'
  mysql_install_db
  echo 'Setting password...'
  service mysql start
  mysqladmin -u root password $mysqlpassword
  echo 'Starting MySQL...'
  echo 'MySQL Container'
  while true;
    do sleep infinity;
  done
fi
