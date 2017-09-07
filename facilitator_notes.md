# Jupyter notebooks for reproducible research workshop: facilitator notes

## Setting up the Docker container

First we need to install Docker:
```sh
sudo dnf -y update
sudo dnf install docker
```

Once this is done we start the Docker service and ensure it starts at boot time:
```sh
sudo systemctl start docker
sudo systemctl enable docker
```

We have created a Docker container for this workshop, so we next need to pull this from DockerHub:
```sh
sudo docker pull rsesheffield/rse-conf-2017:1.0.2
```

## Details of the container

This Docker container contains:

* Various Python packages required for the workshop, including `jupyter`, `nbdime` and `nbval`.
* Includes a clone of this repository in `/home/jupyter/JNB_reproducible`, where `jupyter` is the user inside the container.
* Jupyter is configured to listen on IP 0.0.0.0 and port 65000 to allow for connections from outside the container.
* There is a bash alias for `nbdiff-web` to ensure that by default it listens on IP 0.0.0.0 and port 65001, again to allow for connections from outside the container.
* By default the container starts a Jupyter Notebook server.

## Running the container

Start a Jupyter Notebook server (being sure to specify port mappings between container and host and to also give the container a name):

```sh
sudo docker run -p 65000:65000 -p 65001:65001 --name=nbdime_nbval rsesheffield/rse-conf-2017:1.0.2 
```

The URL to browse to from outside the container is printed on the console.

To allow other commands (e.g. `nbval`, `nbdiff`) to be run in the same container we can run a shell in it:

```sh
sudo docker exec -ti nbdime_nbval /bin/bash
```

From this shell you should be able to launch nbdime's web interface: 

```sh
nbdiff-web some-notebook.ipynb another-notebook.ipynb
```

## Testing the container 

Run the `scripts/env_test.sh` script from inside the container within `/home/jupyter/JNB_reproducible`.
You will be able to see directly on the terminal whether the tests passed.
