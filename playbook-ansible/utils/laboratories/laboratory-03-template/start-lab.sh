#!/bin/bash
dest="/opt/labs/laboratory-03/cyber-range" # Mantenha este formato, alterando apenas o número no nome do laboratório (por exemplo: laboratory-03).
docker build "${dest}/images/blue_team_image/" -t blue-team # Adicione todas as imagens Docker necessárias para a execução do cenário, seguindo este padrão.
docker build "${dest}/images/containernet_cyrm_image/" -t containernet-cyrm # Adicione a sua imagem Docker personalizada do Containernet.

# Em seguida, adicione o comando responsável por iniciar a construção das imagens Docker e a execução dos containers.
docker run -d --name containernet -it --rm --privileged --pid='host' -v /var/run/docker.sock:/var/run/docker.sock --mount type=bind,source="${dest}/topology",target=/cyrm-attack containernet-cyrm python3 /cyrm-attack/corporate-attack-scenario.py
