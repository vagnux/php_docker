#!/bin/sh
namePath=`shuf -i100-999 -n1`
docker run -t -i --rm --name my-running-script"$namePath" --network="host" -v /dev:/dev -v /tmp:/.config  -v "$PWD":"$PWD" -v /home:/home -u $(id -u)  -w "$PWD" php_docker /usr/bin/php "$@"

