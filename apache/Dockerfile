FROM tutum/apache-php
MAINTAINER ELKENZI <elkenziamine@gmail.com>

RUN apt-get update && apt-get -yq install php5-mcrypt && php5enmod mcrypt
    
CMD ["/run.sh"]