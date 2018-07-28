FROM mikechernev/php7-fpm-laravel

ENV USER_NAME docker

COPY php.ini /etc/php/php.ini

RUN echo 'clear_env = no' >> /etc/php/php-fpm.conf

#RUN adduser $USER_NAME
#RUN addgroup $USER_NAME $USER_NAME
RUN chmod 777 -R /var/log

#USER $USER_NAME
