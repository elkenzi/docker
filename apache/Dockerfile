FROM tutum/apache-php
MAINTAINER ELKENZI <elkenziamine@gmail.com>

RUN apt-get update && apt-get -yq install php5-mcrypt && php5enmod mcrypt

RUN usermod -u 1000 www-data && groupmod -g 1000 www-data

WORKDIR /var/www
    
CMD ["/run.sh"]