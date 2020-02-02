FROM nginx:1.17
WORKDIR "/application"

# Fix debconf warnings upon build
ARG DEBIAN_FRONTEND=noninteractive

# Certbot for Debian Buster
RUN apt-get update\
    && apt-get -y --no-install-recommends install certbot python-certbot-nginx\
    && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/* \
