FROM ubuntu:18.04

ENV TZ=Europe/Kyiv
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && \
	apt-get install -y php-fpm \
	php-curl \
	php-json \
	php-mbstring \
	php-mysqli \
	php-gd \
	php-simplexml \
	php-xml \
	php-cli \
	php-imap \
	php-ldap \
	php-xmlrpc \
	php-apcu \
	php-cas

# copy PHP configs 
COPY .configs/php/7.2/fpm/pool.d/www.conf /etc/php/7.2/fpm/pool.d/
COPY .configs/php/7.2/cli/php.ini /etc/php/7.2/cli/

RUN mkdir /run/php

EXPOSE 9000/tcp

ENTRYPOINT ["/usr/sbin/php-fpm7.2","--allow-to-run-as-root","-c","/etc/php/7.2/fpm","--nodaemonize"]
