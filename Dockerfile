FROM node:8-alpine

ARG BUILD_DATE
ARG VCS_REF

LABEL maintainer="Maapteh" \
      org.label-schema.vendor="Maapteh" \
      org.label-schema.name="Chrome Headless and Node instance" \
      org.label-schema.url="https://github.com/maapteh/docker-chrome-headless" \
      org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/maapteh/docker-chrome-headless.git" \
      org.label-schema.vcs-type="Git" \
      org.label-schema.license="MIT" \
      org.label-schema.schema-version="1.0"

RUN echo @edge http://nl.alpinelinux.org/alpine/edge/community >> /etc/apk/repositories \
    && apk add --no-cache \
    python \
    build-base \
    git \
    bash \
    ncurses \
    # chromium dependencies
    nss@edge \
    chromium-chromedriver@edge \
    chromium@edge

ENV CHROME_BIN /usr/bin/chromium-browser
ENV LIGHTHOUSE_CHROMIUM_PATH /usr/bin/chromium-browser
