FROM node:8-alpine

LABEL maintainer="Maapteh" \
      org.label-schema.vendor="Maapteh" \
      org.label-schema.url="https://github.com/maapteh/docker-chrome-headless" \
      org.label-schema.name="Chrome Headless and Node instance" \
      org.label-schema.license="Apache-2.0" \
      org.label-schema.version="9.6.8" \
      org.label-schema.schema-version="1.0"

RUN echo @edge http://nl.alpinelinux.org/alpine/edge/community >> /etc/apk/repositories \
    && apk add --no-cache \
    python \
    build-base \
    git \
    bash \
    # chromium dependencies
    nss@edge \
    chromium-chromedriver@edge \
    chromium@edge

ENV CHROME_BIN /usr/bin/chromium-browser
ENV LIGHTHOUSE_CHROMIUM_PATH /usr/bin/chromium-browser
