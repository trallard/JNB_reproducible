# Jupyter notebooks for reproducible research

This repository contains the materials for the Jupyter notebooks for reproducible research at the [Second RSE conference ](http://rse.ac.uk/conf2017/).

The workshop is completely self contained and should be easily adapted/extended for future workshops. Feel free to raise issues if you see it fit.

A suitable environment is provided in the form of a Docker container (Dockerfile provided in the repo). Instructions to get this working are given below.

The slides are built using reveal.js and can be served locally following the instructions shown [here](https://github.com/hakimel/reveal.js/).

Alternatively the web hosted version of the slides can be found [here]().

Getting all of the workshop content should be as easy as going a `git clone` or `git fork`.


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
sudo docker pull rsesheffield/rse-conf-2017:1.0.0
sudo docker run -p 65000:65000 -ti rsesheffield/rse-conf-2017:1.0.0 /bin/bash
```
By now you should have a fully operational Docker container with all the libraries/dependencies needed for this workshop.

We have specified ports for the jupyter notebooks. To launch a jupyter notebook instance from the container you should run this as:
```
jupyter notebook --ip=0.0.0.0 --port=65000 --no-browser
```

similarly for the web browser nbdime tools:
```
nbdiff-web --ip 0.0.0.0 --port 65000
```

Both commands will present URLs that can be browser from outside the container

Alternatively, if you run the container without specifying a command then it will just start a Jupyter Notebook server (i.e. does what lines 1&2 above do), but note that if you use this approach then stopping the Notebook server will also stop the container.
```
sudo docker run -p 65000:65000 rsesheffield/rse-conf-2017:1.0.0
```

# Want to make sure everything works as expected?
