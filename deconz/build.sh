#!/bin/bash
VERSION=5.3.6
DECONZ_VERSION=2.05.78
docker build -t armhf-addon-deconz:${VERSION} --build-arg BUILD_ARCH=armhf --build-arg BUILD_FROM=homeassistant/armv7-base-debian:latest --build-arg DECONZ_VERSION=${DECONZ_VERSION} . \
&& docker tag armhf-addon-deconz:${VERSION} habakke/armhf-addon-deconz:${VERSION} \
&& docker tag armhf-addon-deconz:latest habakke/armhf-addon-deconz:latest \
&& docker push habakke/armhf-addon-deconz:${VERSION}
