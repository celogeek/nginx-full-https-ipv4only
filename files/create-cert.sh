#!/bin/sh
certbot certonly --webroot --webroot-path /var/www -d "$1"
