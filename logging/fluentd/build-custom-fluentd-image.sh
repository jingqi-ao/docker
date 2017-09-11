#!/bin/bash

# REMOTE_IMAGE_FULL_NAME

rm -rf custom-fluentd

mkdir custom-fluentd

VERSION=$(cat versions)

cp Dockerfile-fluentd-with-plugins custom-fluentd/

cd custom-fluentd

curl https://raw.githubusercontent.com/fluent/fluentd-docker-image/master/v0.12/debian-onbuild/fluent.conf > fluent.conf

mkdir plugins

docker build -t custom-fluentd:$VERSION -f Dockerfile-fluentd-with-plugins .

if [[ ! -z "$REMOTE_IMAGE_FULL_NAME" ]]; then
    docker tag custom-fluentd:$VERSION $REMOTE_IMAGE_FULL_NAME:$VERSION
    docker push $REMOTE_IMAGE_FULL_NAME:$VERSION
fi
