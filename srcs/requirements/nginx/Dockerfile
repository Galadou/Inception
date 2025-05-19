FROM debian:bullseye
# run ???

#SETUP SSL KEY 
RUN mkdir -p /etc/nginx/ssl
RUN openssl req -x509 -nodes -out /etc/nginx/ssl/certificate.crt -keyout /etc/nginx/ssl/certificate.key -subj "/C=FR/ST=NA/L=Angouleme/O=42/OU=42/CN=$DOMAIN_NAME/UID=gala"

#ON CREE LES DIRECTORY NECESSAIRE ET ON COPY LA CONFIG
RUN mkdir -p /var/run/nginx
COPY ./conf/nginx.conf /etc/nginx/conf.d

#ON SET LE PORT
EXPOSE 443

#ON LANCE NGINX (-g pour edit le main file config, et daemon off pour autorisee nginx a run en arriere plan)
CMD ["nginx", "-g", "daemon off;"]

