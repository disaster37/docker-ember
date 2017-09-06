FROM node:6-alpine
MAINTAINER Sebastien LANGOUREAUX (linuxworkgroup@hotmail.com)

ENV EMBER_VERSION "2.14.2"

# Install extra package
RUN apk --update add fping curl bash &&\
    rm -rf /var/cache/apk/*

# Install ember
RUN npm install -g async watchman bower phantomjs-prebuilt silent-error esprima-fb ember-cli@${EMBER_VERSION}

ENTRYPOINT ember