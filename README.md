# happstack-docker
Easy to set up happstack server inside a docker container

## How To Use
There are scripts in the `bin` directory to help build, start, stop, and restart the docker container.

### Build
- `./bin/build.sh`

### Start
- `./bin/start.sh`

### Restart
- `./bin/restart.sh`

### Stop
- `./bin/stop.sh`

## Your App
Your application should live within the `app` directory. If you already have a binary put it there and you can remove line `12` from the `Dockerfile`.
- Note: the `Dockerfile` is expecting your binary to be `app/server`

