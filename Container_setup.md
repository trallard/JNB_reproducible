# Setting up the Docker container  

First we need to install Docker
```bash
sudo dnf -y update
sudo dnf install docker
```

once this is done we start Docker
```bash
sudo systemctl start docker
sudo systemctl enable docker
```

We have created a Docker container for this workshop, so we need to pull this from the docker repository and then run it in our machine:
```
sudo docker pull rsesheffield/rse-conf-2017:1.0.2
sudo docker run -p 65000:65000 -p 65001:65001 -ti rsesheffield/rse-conf-2017:1.0.2 /bin/bash
```
By now you should have a fully operational Docker container with all the libraries/dependencies needed for this workshop.

# Want to make sure everything works as expected?
Run the `scripts/env_test.sh` script from your terminal (`source scripts/env_test.sh`) and this will make sure everything works as expected.

You will be able to see directly on the terminal is the test passed.
