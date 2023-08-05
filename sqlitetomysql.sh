#!/bin/bash

SQLITE_DIR_PATH="/home/isucon/webapp/tenant_db/"

MYSQL_DB_NAME="isuports"
MYSQL_DB_USER="isucon"
MYSQL_DB_PASSWORD="isucon"

sqlite_files=(`ls -1 ${SQLITE_DIR_PATH} | grep db | xargs`)

for sqlite_file in "${sqlite_files[@]}" ; do
     echo "${sqlite_file}"
     sqlite3mysql -f /home/isucon/webapp/tenant_db/${sqlite_file} -d ${MYSQL_DB_NAME} -u ${MYSQL_DB_USER} --mysql-password ${MYSQL_DB_PASSWORD} || exit 1
done
