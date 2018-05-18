[![](https://images.microbadger.com/badges/version/maapteh/chrome-headless.svg)](https://microbadger.com/images/maapteh/chrome-headless "alpine latest") [![](https://images.microbadger.com/badges/image/maapteh/docker-chrome-headless.svg)](https://microbadger.com/images/maapteh/chrome-headless "Download size")

# Chrome Headless and Node in a docker container

This image allows to run headless JavaScript tests in a CI server. This image supports karma and protractor test under chromium.

## Latest
- chromium@edge (64.0.3282.168-r0)
- chromium-chromedriver@edge (64.0.3282.168-r0)

## Usage
You will need to start chromium with `--no-sandbox` argument in your karma config to be able to run Chromium inside a container.
