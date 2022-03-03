#!/bin/bash

docker build -t ds-server:1.0 .
if [ -z $1 ]
then
    docker run --rm -ti -p 50000:50000 --name ds-server-1 ds-server:1.0 ./ds-sim/src/ds-server -v brief -n
else
    docker run --rm -ti -p 50000:50000 --name ds-server-1 ds-server:1.0 ./ds-sim/src/ds-server -v brief -n -c ./ds-sim/$1
fi
