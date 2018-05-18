alpine headless: [![](https://images.microbadger.com/badges/version/maapteh/docker-chrome-headless.svg)](https://microbadger.com/images/maapteh/docker-chrome-headless "alpine latest")

[![](https://images.microbadger.com/badges/image/maapteh/docker-chrome-headless.svg)](https://microbadger.com/images/maapteh/docker-chrome-headless "Download size")

# Chrome Headless and Node in a docker container

This image allows to run headless JavaScript tests in a CI server. This image supports karma and protractor test under chromium.

## Latest
- chromium@edge (64.0.3282.168-r0)
- chromium-chromedriver@edge (64.0.3282.168-r0)

## Usage
Unfortunately, Chromium doesn't support container (https://github.com/travis-ci/travis-ci/issues/938), so you need to start chromium with `--no-sandbox` argument to avoid this.
