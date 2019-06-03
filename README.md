# Docker Linux Tests

Boot any image and run a shell script in a single command.

Stick your script in `run.sh`, then boot with `./boot.sh image port1,port2,...`

Ports publiush to the same number on the host. Ranges are supported, e.g `5000-5010`.

Examples:
```
./boot.sh ubuntu:latest 80,443
```
```
./boot.sh debian:jessie
```
```
./boot.sh alpine:3.7 5000-5010
```