#!/bin/bash -eu

mysql=( mysql --protocol=socket -uroot -p"${MYSQL_ROOT_PASSWORD}" )

"${mysql[@]}" <<-EOSQL
    CREATE DATABASE IF NOT EXISTS another_db;
    GRANT ALL ON another_db.* TO '${MYSQL_USER}'@'%' ;
EOSQL
