# First we need to install Docker and start if within the VM
sudo dnf -y update
sudo dnf install docker
sudo systemctl start docker
sudo systemctl enable docker


# Fetch the Docker container for the session
sudo docker pull rsesheffield/rse-conf-2017:1.0.0
sudo docker run -p 65000:65000 --ti rsesheffield/rse-conf-2017:1.0.0 /bin/bash

# Within container

jupyter notebook --ip=0.0.0.0 --port=65000 --no-browser

# or

nbdiff-web --ip 0.0.0.0 --port 65000
