#!/bin/sh
namePath=`shuf -i100-999 -n1`
docker run -i --rm --name my-running-script"$namePath" --network="host"  -v "$PWD":"$PWD" -v /home:/home -v /tmp:/tmp -u $(id -u)  -w "$PWD" php_docker /usr/bin/php-cs-fixer "$@"

