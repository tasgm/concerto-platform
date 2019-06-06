#!/usr/bin/env bash

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker push tasgm/concerto-platform:$TRAVIS_BRANCH
if [[ "$TRAVIS_BRANCH" = "master" ]]; then docker push tasgm/concerto-platform:latest; fi
