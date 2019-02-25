# happstack-docker
Easy to set up happstack server inside a docker container

## Getting Started
Follow these steps to get things started in here.
- Note: Docker needs to be installed and already running

`./bin/build.sh`
- Note: this might take a few minutes, especially when downloading haskell itself
- Note: Cabal is updating their commands. This might throw a few warnings. I will attempt to fix them soon.
`./bin/start.sh 8080`
- Note: See below for more documentation on this command
- Note: to test the default application as is go to `localhost:8080/hello/dave` in your browser
`./bin/stop.sh`


## How To Use
There are scripts in the `bin` directory to help build, start, stop, and restart the docker container.

### Build
- `./bin/build.sh`

### Start
- `./bin/start.sh <optional port number>`
  - Note: Defaults to port 80
  - Port 80: `./bin/start.sh`
  - Port 8080: `./bin/start.sh 8080`

### Restart
- `./bin/restart.sh`

### Stop
- `./bin/stop.sh`

## Your App
Your application should live within the `app` directory. If you already have a binary put it there and you can remove line `12` from the `Dockerfile`.
- Note: the `Dockerfile` is expecting your binary to be `app/server`

