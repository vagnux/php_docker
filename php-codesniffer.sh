#!/bin/sh
namePath=`shuf -i100-999 -n1`
param="$@";
if [ $# -lt 1 ]; then
   read param
fi
docker run  -i --name my-running-script"$namePath" --network="host" -v /dev:/dev -v /tmp:/tmp -v /tmp:/.config  -v "$PWD":"$PWD" -v /home:/home -u $(id -u)  -w "$PWD" php_docker /usr/bin/phpcs -w --standard=PSR12 "$param"  

