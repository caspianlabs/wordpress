# Modified wordpress container with xdebug enabled.
# Created with modified instructions from this Gist[1].
# 
# [1] https://gist.github.com/chadrien/c90927ec2d160ffea9c4
#
FROM wordpress:latest

RUN RUN yes | pecl install xdebug \
    && echo "zend_extension=$(find /usr/local/lib/php/extensions/ -name xdebug.so)" > /usr/local/etc/php/conf.d/xdebug.ini \
    && echo "xdebug.remote_enable=on" >> /usr/local/etc/php/conf.d/xdebug.ini \
    && echo "xdebug.remote_autostart=off" >> /usr/local/etc/php/conf.d/xdebug.ini

