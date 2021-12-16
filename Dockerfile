FROM php:8.1.0-fpm

ARG user
ARG uid

COPY . /var/www/

RUN useradd -G www-data,root -u $uid -d /home/$user $user
RUN mkdir -p /home/$user/.composer && \
    chown -R $user:$user /home/$user && \
    chown -R $user:$user /var/www/

# set working directory
WORKDIR /var/www

USER $user