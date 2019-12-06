# Docker Linux Tests

This software is licensed under the Apache 2 software license (see LICENSE file). Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.

The author of this software makes no representation or guarantee that this software (including any third-party libraries) will perform as intended or will be free of errors, bugs or faulty code. The software may fail which could completely or partially limit functionality or compromise computer systems. If you use or implement the software, you do so at your own risk. In no event will the author of this software be liable to any party for any damages whatsoever, even if it had been advised of the possibility of damage.

Boot any image and run a shell script in a single command.

1. Stick your script in `run.sh`
2. Boot: `./boot.sh image port1,port2,...`

Ports publish to the same number on the host. Ranges are supported, e.g `5000-5010`.

Examples:
```
./boot.sh debian:jessie
```
```
./boot.sh ubuntu:latest 80,443
```
```
./boot.sh alpine:3.7 5000-5010
```
