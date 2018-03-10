FROM haskell:latest


RUN mkdir -p /opt/server
WORKDIR /opt/server

RUN export PATH=~/.cabal/bin:$PATH
RUN cabal update
RUN cabal install happstack-server
