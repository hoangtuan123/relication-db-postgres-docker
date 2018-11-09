#!/bin/bash


cd /var/lib/postgresql/9.6

if [ -d "main-bekup" ]; then
    echo 'main-bekup'

    mv main main-bekup

    mkdir main/

    chmod 700 main/

    echo "123456@" | pg_basebackup -h pg_db_1 -U replica -D /var/lib/postgresql/9.6/main -P --xlog
fi

/etc/init.d/postgresql stop
cp /recovery.conf /var/lib/postgresql/9.6/main/recovery.conf
chown postgres:postgres /var/lib/postgresql/9.6/main/recovery.conf
chmod 600 /var/lib/postgresql/9.6/main/recovery.conf
/etc/init.d/postgresql start