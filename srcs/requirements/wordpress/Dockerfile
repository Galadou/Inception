FROM	debian:bullseye

#installs the necessary dependencies
RUN	apt update && apt install -y php7.4-fpm php7.4-mysql curl mariadb-client

COPY	conf/www.conf /etc/php/7.4/fpm/pool.d/www.conf
COPY	tools/wp.sh /usr/local/bin/wp.sh

RUN	chmod +x /usr/local/bin/wp.sh

CMD ["/usr/local/bin/wp.sh"]
