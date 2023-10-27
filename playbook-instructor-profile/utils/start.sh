
#!/bin/bash
docker run --name containernet -it --rm --privileged --pid='host' -v /var/run/docker.sock:/var/run/docker.sock --mount type=bind,source=/opt/web/topology,target=/cyrm containernet-cyrm python3 /cyrm/scenario-1.py







