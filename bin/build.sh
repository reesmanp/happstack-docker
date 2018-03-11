#!/bin/sh

cwd="$(dirname $0)"
cd "$cwd/.."
docker build --tag happstack-server .

