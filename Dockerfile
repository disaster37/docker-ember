FROM node:6-alpine
MAINTAINER Sebastien LANGOUREAUX (linuxworkgroup@hotmail.com)

ENV UID=1001\
    EMBER_VERSION=2.14.2

# Install extra package
RUN echo http://dl-2.alpinelinux.org/alpine/edge/community/ >> /etc/apk/repositories &&\
    apk --update add fping curl bash git shadow xvfb chromium &&\
    rm -rf /var/cache/apk/*

# Install ember
RUN npm install -g async watchman bower phantomjs-prebuilt silent-error esprima-fb ember-cli@${EMBER_VERSION}

# Change UID to build ember project with the same righ as dev user
RUN usermod -u ${UID} node

USER node