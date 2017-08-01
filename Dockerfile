FROM ubuntu:14.04

MAINTAINER sysops@imagho.net

RUN apt-get update -y && apt-get install -y \
  apache2 \
  gettext-base \
  libapache2-mod-php5 \
  php-mdb2-driver-mysql \
  php5 \
  php5-gd \
  php5-imap \
  php5-mysql \
  php-pear

RUN  a2dissite 000-default.conf && \
  a2ensite vtiger.conf

# apache2 port
EXPOSE 80

COPY vtiger.conf /etc/apache2/sites-available/vtiger.conf

# entrypoint
COPY entrypoint.sh /entrypoint.sh
RUN chmod 755 /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
