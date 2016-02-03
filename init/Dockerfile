FROM gliderlabs/alpine:3.1

MAINTAINER elkenzi <elkenziamine@gmail.com>

RUN apk --update add mysql-client php-cli php-pdo php-pdo_mysql php-ctype git openssh perl php-pear curl php-curl php-openssl php-json php-phar php-mcrypt php-gettext

#install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer

#Make ssh autostart
RUN rc-update add sshd

ENV HOME /root

# Make ssh dir
RUN mkdir /root/.ssh/

ADD ssh/ /root/.ssh/

# Fixes permission if needed
RUN chmod 600 /root/.ssh/*

# Avoid first connection host confirmation
RUN ssh-keyscan -p22 github.com > /root/.ssh/known_hosts
RUN ssh-keyscan bitbucket.org >> /root/.ssh/known_hosts

RUN mkdir /home/ws

# Clone the conf files into the docker container
CMD if [ ! -d "/home/ws/sso" ]; then git clone --branch develop git@github.com:Bruno-de-l-Escaille/SSO.git /home/ws/sso \
    && cd /home/ws/sso \
    && git submodule update --init --recursive \
    && cp /home/ws/sso/config/autoload/local.php.dist.test /home/ws/sso/config/autoload/local.php \
    && mysql -h db -u root -proot -e "CREATE DATABASE IF NOT EXISTS sso DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;" \
    && /home/ws/sso/vendor/Doctrine/DoctrineModule/bin/doctrine-module orm:schema-tool:update -f; \
    fi \

    && if [ ! -d "/home/ws/btb" ]; then git clone --branch develop git@github.com:Bruno-de-l-Escaille/btbApp.git /home/ws/btb \
    && cd /home/ws/btb/workbench/brunodelescaille/proxyttp \
    && composer self-update \
    && composer update \
    && cd /home/ws/btb \
    && composer update \
    && chown -R web:web /home/ws/btb/app/storage \
    && chmod -R 777 /home/ws/btb/app/storage; \
    fi \

    && if [ ! -d "/home/ws/apittp" ]; then git clone --branch master git@bitbucket.org:ttpit/api.git /home/ws/apittp \
    && cd /home/ws/apittp \
    && composer update; \
    fi
