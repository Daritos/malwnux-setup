# Docker-compose role

Download and setup docker-compose binary (linux x86_64) into

- /usr/local/bin/docker-compose
- /usr/bin/docker-compose (soft linked)

Available variables:

```YAML
# Version of docker-compose binary to download
# Default is the latest as of 2021-10-30
docker-compose-version: "1.29.2"
```
