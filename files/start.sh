#!/bin/sh
service cron start
/etc/cron.daily/realip
exec nginx -g "daemon off;"
