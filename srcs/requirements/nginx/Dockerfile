FROM debian:bullseye

RUN apt update -y && apt upgrade -y && \
    apt install -y nginx vim openssl && \
    mkdir -p /etc/nginx/ssl

RUN openssl req -x509 -nodes \
    -out /etc/nginx/ssl/inception.crt \
    -keyout /etc/nginx/ssl/inception.key \
    -subj "/C=FR/ST=NA/L=Angouleme/O=42/OU=42/CN=gmersch.42.fr/UID=gmersch"

RUN mkdir -p /var/run/nginx /var/www/html

COPY conf/nginx.conf /etc/nginx/nginx.conf

RUN chmod -R 755 /var/www/html && \
    chown -R www-data:www-data /var/www/html

CMD ["nginx", "-g", "daemon off;"]

