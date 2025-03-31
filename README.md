# Pi-hole Docker Config

Configuration for my https://pi-hole.net/ instance running in Docker on RPi 3B+.

## Requirements

* Docker with compose
* [just](https://github.com/casey/just) command runner

## Initial setup

Clone repo and enter the folder:

```
git clone https://github.com/tpwo/pihole-docker-config
cd pihole-docker-config
```

Create `.env` file by providing your values for:
- `ADMIN_PASSWORD` -> choose a secure password
- `IPV4_HOST_ADDRESS` -> provide IP address of the host machine (usually `192.168.X.X`)

You can copy the sample file and edit it:

```
cp .env{.sample,}
```

Create `hosts` file and (optionally) fill in the IP Addresses of devices in your LAN. This way, Pi-hole displays their names instead of IP Addresses in the web UI.

You can copy the sample file and edit it:

```
cp hosts{.sample,}
```

## Running

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
Version is specified in `docker-compose.yaml`.
After updating version, you can pull the newer image with:

```
just update
```
