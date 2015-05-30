# docker-shout

[Shout](http://shout-irc.com), a node irc client/server in the browser, in a container

[![](https://badge.imagelayers.io/arbourd/shout:latest.svg)](https://imagelayers.io/?images=arbourd/shout:latest 'Get your own badge on imagelayers.io')

[![](http://dockeri.co/image/arbourd/shout)](https://registry.hub.docker.com/u/arbourd/shout/)

## Installation

Pull from Docker Hub

```bash
$ docker pull arbourd/shout
```

Or clone the git repo and build the image

```bash
$ git clone git@github.com:arbourd/docker-shout.git
```

## Usage

### Running the container

```bash
$ docker run --name=shout -d -v ~/shout:/shout -p 9000:9000 arbourd/shout
```

### Setting a different port

Set the `PORT` env variable in your `run` command to whatever port you want, in this case `8080`

```bash
$ docker run --name=shout -d -v -e PORT=8080 ~/shout:/shout -p 8080:8080 arbourd/shout
```

### Setting the server as private

*You must have a user created* to start the server as private. Without one, the container will simply exit.

Set the `PRIVATE` env variable in your `run` command to `true` to run Shout as `private`

```bash
$ docker run --name=shout -d -v -e PRIVATE=true ~/shout:/shout -p 9000:9000 arbourd/shout
```

### User CRUD

First, find the running container's id (or use the containers name in place of the id):

```bash
$ docker ps -l | grep shout

> CONTAINER ID    IMAGE                   COMMAND
> 2a05fd52a599    arbourd/shout:latest    "/bin/bash -c /init.sh"
```

Run your `shout` command with Docker's `exec` and your container id or name, with the `--home /shout` flag

```bash
# With container's ID
$ docker exec -i 2a05fd52a599 shout --home /shout add user

# With container's name
$ docker exec -i shout shout --home /shout add user
```

### Additional Shout settings and help

Please see the [Shout documentation](http://shout-irc.com/docs/) for more details

## License

Public Domain
