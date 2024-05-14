#!/bin/bash
cd /opt/labs/laboratory-02/cyrm-attack && ./environment_preparation.sh
docker run -d --name containernet -it --rm --privileged --pid='host' -v /var/run/docker.sock:/var/run/docker.sock --mount type=bind,source=/opt/labs/laboratory-02/cyrm-attack/topology,target=/cyrm-attack containernet-cyrm python3 /cyrm-attack/corporate-attack-scenario.py
