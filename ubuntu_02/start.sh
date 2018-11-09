#!/bin/sh

./setup-relication.sh

/usr/bin/supervisord -n -c /etc/supervisor/supervisord.conf

