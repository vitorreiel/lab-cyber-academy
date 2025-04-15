#!/bin/bash
dest="/opt/labs/laboratory-02/cyber-range"
docker build "${dest}/images/blue_team_image/" -t blue-team
docker build "${dest}/images/ssh_image/" -t web-server
docker build "${dest}/images/user_image/" -t alpine-user
docker build "${dest}/images/ddos_image/" -t ddos-attack
docker build "${dest}/images/dic_ssh_image/" -t dic-attack-ssh
docker build "${dest}/images/containernet_cyrm_image/" -t containernet-cyrm
docker pull dperson/samba
docker run -d --name containernet -it --rm --privileged --pid='host' -v /var/run/docker.sock:/var/run/docker.sock --mount type=bind,source="${dest}/topology",target=/cyrm-attack containernet-cyrm python3 /cyrm-attack/corporate-attack-scenario.py
