#!/bin/bash
cd /opt/labs/laboratory-01/cyrm && ./environment_preparation.sh
docker run -d --name containernet -it --rm --privileged --pid='host' -v /var/run/docker.sock:/var/run/docker.sock --mount type=bind,source=/opt/labs/laboratory-01/cyrm/topology,target=/cyrm containernet-cyrm python3 /cyrm/scenario-1.py
