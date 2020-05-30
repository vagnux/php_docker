#!/bin/bash
param="$@";
if [ $# -lt 1 ]; then
   read param
fi
namePath=`shuf -i100-999 -n1`
docker run -i --rm --name my-running-script"$namePath" --network="host" -v /dev:/dev -v /tmp:/.config  -v "$PWD":"$PWD" -v /home:/home -u $(id -u)  -w "$PWD" php_docker /usr/bin/php "$param" 

