#!/bin/bash
docker build -t armhf-addon-deconz:5.3.6 --build-arg BUILD_ARCH=armhf --build-arg BUILD_FROM=homeassistant/armhf-base --build-arg DECONZ_VERSION=2.05.78 . \
&& docker tag armhf-addon-deconz:5.3.6 habakke/armhf-addon-deconz:5.3.6 \
&& docker push habakke/armhf-addon-deconz:5.3.6
