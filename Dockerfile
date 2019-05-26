FROM nginx

RUN apt update && apt install -y certbot procps curl cron ca-cacert ca-certificates ssl-cert && apt clean

RUN rm /etc/nginx/conf.d/default.conf

RUN openssl dhparam -dsaparam -out /etc/ssl/certs/dhparam.pem 2048

COPY files /

CMD ["/start.sh"]
