#!/bin/bash

onred='\033[41m'
endcolor="\033[0m"

# Handle errors
set -e
error_report() {
    echo -e "${onred}Error: failed on line $1.$endcolor"
}
trap 'error_report $LINENO' ERR

if [ -z $1 ]; then
	echo -e "${onred}Error: please specify an image.$endcolor"
	exit 1
fi

docker build -t linux --build-arg IMAGE=$1 .

ports=$(echo $2 | tr "," "\n")

for port in $ports
do
    portargs+=" -p ${port}:${port}"
done

docker run $portargs -it linux
