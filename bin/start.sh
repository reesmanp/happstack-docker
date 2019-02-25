#!/bin/sh

PORT=80

if [ "$1" != "" ];
then
  PORT=$1
fi

docker run --publish $PORT:8000 --detach --name happstack-server happstack-server

