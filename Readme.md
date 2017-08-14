# Jupyter notebooks for reproducible research

Hopefully this will be green....
[![Build Status](https://travis-ci.org/trallard/JNB_reproducible.svg?branch=master)](https://travis-ci.org/trallard/JNB_reproducible)

This repository contains the materials for the Jupyter notebooks for reproducible research workshop given at the [Second RSE conference ](http://rse.ac.uk/conf2017/) (7-8th September 2017, Manchester UK).

## Leading by example

Since this workshop is centered  around establishing best practices for reproducible research it is completely self contained and should be easily adapted/extended for future workshops. Feel free to raise issues if you see it fit. Also, recommendations on how to make this workshop better are welcome and should be done via a GitHub issue too.

A suitable environment is provided in the form of a Docker container (Dockerfile provided in the repo). The instructions to set your own environment are given below.

The slides are built using reveal.js and can be served locally following the instructions given [here](https://github.com/hakimel/reveal.js/).

Alternatively the web hosted version of the slides can be found in the following sites:

[http://rse.shef.ac.uk/RSE_conference_jupyter_workshop/](http://rse.shef.ac.uk/RSE_conference_jupyter_workshop/)

[http://bitsandchips.me/JNB_reproducible/](http://bitsandchips.me/JNB_reproducible/)

Getting all of the workshop content should be as easy as doing a `git clone` or `git fork` on this repository.

## Pre-requisites
- Make sure you have a GitHub account
- Get a [Travis CI](https://travis-ci.org) account (make sure it is on travis-ci.org)
- Basic command line and git knowledge are needed for this workshop

## Setting up the Docker container  

First we need to install Docker (if you aready have this installed skip to the next steps)
```bash
sudo dnf -y update
sudo dnf install docker
```

once this is done we start Docker in our computer
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

## Want to make sure everything works as expected?
Run the `scripts/env_test.sh` script from your terminal (`source scripts/env_test.sh`) and this will make sure everything works as expected.

This scripts makes sure that the needed packages are working properly as well as the jupyter notebooks instances. You do not need internet access for this as the instances should be served locally.

You will be able to see directly on the terminal if the test passed


## Licensing

The creative material of this workshop (including the images from external sources used in the presentation) are licensed under [ CC BY 4.0 ](https://creativecommons.org/licenses/by/4.0/)

nbval and nbdime are open source projects developed as part of the [OpenDreamKit project](http://opendreamkit.org).

The code as well as the license terms of both packages can be found at:
- [nbval GitHub repository](https://github.com/computationalmodelling/nbval)
- [nbdime GitHub repository](https://github.com/jupyter/nbdime)
