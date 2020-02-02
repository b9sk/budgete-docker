FROM phpdockerio/php72-fpm:latest
WORKDIR "/application"

# Fix debconf warnings upon build
ARG DEBIAN_FRONTEND=noninteractive

# Certbot for Ubuntu 18.04
RUN apt-get update\
    && apt-get install -y software-properties-common\
    && add-apt-repository -y universe\
    && add-apt-repository -y ppa:certbot/certbot\
    && apt-get update\
    && apt-get install -y certbot python-certbot-nginx

# Install selected extensions and other stuff
RUN apt-get update \
    && apt-get -y --no-install-recommends install  php7.2-mysql php7.2-intl mysql-client \
    && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/* \
    && curl https://get.symfony.com/cli/installer | bash \
    && mv /root/.symfony/bin/symfony /usr/local/bin/symfony
