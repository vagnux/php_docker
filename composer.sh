#!/bin/sh
namePath=`shuf -i100-999 -n1`
docker run -t -i --rm --name my-running-script"$namePath" --network="host"  -v "$PWD":"$PWD" -v /home:/home  -v /tmp:/.composer -u $(id -u ${USER}):$(id -g ${USER}) -w "$PWD" php_docker /usr/local/bin/composer "$@"
