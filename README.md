# Screeps Docker Server

Creates a dockerized image of a screeps 4.0.X server with the screepsmod-admin-utils already installed
with an initial configuration of 1 second per tick.

## Requirements

- Docker

## Steps

build docker image and run it with the SteamId as environment variable.

```sh
docker build -t screeps-server:latest .
docker run -e STEAM_KEY=<Screeps game key> screeps-server:latest
```
