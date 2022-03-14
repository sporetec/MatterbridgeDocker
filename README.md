# MatterbridgeDocker
A custom Docker Image for Matterbridge based on the one included in the [original repo](https://github.com/42wim/matterbridge) using alpine.
If debug output is needed, remove the # sign infront of the command line in [docker-compose.yml](docker-compose.yml).

:exclamation: This does not yet have the ability to write encrypted messages to Matrix as the pantalaimon container is currently throwing an error. :exclamation:

## Requirements:
Needs a matterbridge.toml file in the same location as the docker compose, for reference see the [Wiki of the original repo](https://github.com/42wim/matterbridge/wiki)
