#!/bin/sh

/usr/bin/supervisord -n -c /etc/supervisor/supervisord.conf

./setup-relication.sh

