# Pi-hole Docker Config

Configuration for my https://pi-hole.net/ instance running in Docker on RPi 3B+.

## Requirements

* Docker with compose
* [just](https://github.com/casey/just) command runner

## Running

Initial setup:

```
git clone https://github.com/tpwo/pihole-config
cd pihole-config

cp .env{.sample,}
# edit .env by providing your values for:
# - ADMIN_PASSWORD -> choose a secure password
# - IPV4_HOST_ADDRESS -> provide IP address of the host machine
#                        (usually 192.168.X.X)

# (optional step)
cp hosts{.sample,}
# edit hosts file by providing IP Addresses of devices in your network. This
way, pihole will display their names instead of IP Addresses in the web UI.
```

To start:

```
just up
```

To stop:

```
just stop
```

## Update Gravity DB

```
just updateGravity
```

## Pull newer Pi-hole image

Note that we want to use a specific non-latest image tag to provide stability.
It's provided in `docker-compose.yaml`.
You might want to update it first.

```
just update
```
