#!/bin/sh

docker run --publish 80:8000 --detach --name happstack-server happstack-server

