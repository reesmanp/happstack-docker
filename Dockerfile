FROM haskell:latest


RUN mkdir -p /opt/server
WORKDIR /opt/server

RUN export PATH=~/.cabal/bin:$PATH
RUN cabal update
RUN cabal install happstack-server

COPY . /opt/server
RUN ghc --make -threaded app/server.hs -o app/server

EXPOSE 80:8000

CMD ["app/server"]

