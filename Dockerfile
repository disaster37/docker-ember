FROM node:4-alpine
MAINTAINER Sebastien LANGOUREAUX (linuxworkgroup@hotmail.com)


# Install extra package
RUN apk --update add fping curl bash git &&\
    rm -rf /var/cache/apk/*

# Install ember
RUN npm install -g async watchman bower phantomjs-prebuilt ember-cli@2.14.1 silent-error

USER node