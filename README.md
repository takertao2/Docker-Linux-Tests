# Docker-Linux-Tests

Boot any image and run a shell script in a single command.

Stick your script in `run.sh`, then boot with `./boot.sh image port1,port2,...`.

Examples:
```
./boot.sh ubuntu:latest 80,443
```
```
./boot.sh debian:jessie
```
```
./boot.sh alpine:3.7 5000
```