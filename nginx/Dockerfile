FROM nginx
MAINTAINER ELKENZI <elkenziamine@gmail.com>

RUN usermod -u 1000 www-data && groupmod -g 1000 www-data

WORKDIR /var/www
    
CMD ["nginx", "-g", "daemon off;"]