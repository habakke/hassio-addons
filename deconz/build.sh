#!/bin/bash
docker build -t armhf--addon-deconz --build-arg BUILD_ARCH=armhf --build-arg BUILD_FROM=balenalib/armv7hf-debian:stretch-run --build-arg DECONZ_VERSION=2.05.78 .
docker tag armhf--addon-deconz habakke/armhf--addon-deconz:latest
docker push habakke/armhf--addon-deconz:latest
