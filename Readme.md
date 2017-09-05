# Jupyter notebooks for reproducible research

Hopefully this will be green....
[![Build Status](https://travis-ci.org/trallard/JNB_reproducible.svg?branch=master)](https://travis-ci.org/trallard/JNB_reproducible)

This repository contains the materials for the Jupyter notebooks for reproducible research workshop given at the [Second RSE conference ](http://rse.ac.uk/conf2017/) (7-8th September 2017).

Critically, we will  introduce two technologies recently developed as part of the EU OpenDreamKit project, nbval and nbdime, which bring unit testing and version control to the Jupyter notebook ecosystem.
By doing so we aim to encourage others to adopt best development practices leading to more reproducible, replicable, and reliable computational results.

## Leading by example

Since this workshop is centered  around establishing best practices for reproducible research it is completely self contained and should be easily adapted/extended for future
 workshops.
 Feel free to [raise issues](https://github.com/trallard/JNB_reproducible/issues) if you see it fit.

A suitable environment is provided in the form of a Docker container (Dockerfile provided in the repo):
 - Setup and usage notes [for students](./user_setup_notes.md)
 - Setup and usage notes [for facilitators](./facilitator_notes.md)

The slides are built using reveal.js and can be served locally following the instructions shown [here](https://github.com/hakimel/reveal.js/).
 Since the slides are served using GitHub Pages, these can be found in the `gh-pages` branch of this repository.

Alternatively the web-hosted version of the slides can be found in the following sites: [http://rse.shef.ac.uk/RSE_conference_jupyter_workshop/](http://rse.shef.ac.uk/RSE_conference_jupyter_workshop/)

[http://bitsandchips.me/JNB_reproducible/](http://bitsandchips.me/JNB_reproducible/)

## Licensing

The creative material of this workshop (including the presentation slides as well as the images from external sources used in the presentation) are licensed under [ CC BY 4.0 ](https://creativecommons.org/licenses/by/4.0/)

nbval and nbdime are open source projects developed as part of the European funded project [OpenDreamKit project](http://opendreamkit.org).

The code as well as the license terms of both packages can be found at:
- [nbval GitHub repository](https://github.com/computationalmodelling/nbval)
- [nbdime GitHub repository](https://github.com/jupyter/nbdime)

The scripts and jupyter notebook contained in this repository are distributed under [the 3-Clause BSD license](https://opensource.org/licenses/BSD-3-Clause).

## Attendees of the RSE conference 2017
We will have some hands-on bits as well as discussion slots in this workshop, for this purpose we have set an Etherpad at [https://etherpad.wikimedia.org/p/RSE-reproNB](https://etherpad.wikimedia.org/p/RSE-reproNB).


## Pre-requisites

**Note:** as mentioned above, the required packages for this workshop are provided in the form of a Docker container.  Should you opt not to use this container you need to ensure you have the following installed in your computer in a [virtualenv](https://virtualenv.pypa.io/en/stable/) or [Conda environment](https://conda.io/docs/user-guide/tasks/manage-environments.html):
- Python 3.5
- git
- jupyter notebooks
- pip
- pandas
- seaborn

Also you will need to have a terminal ([Git Bash](https://git-for-windows.github.io/) or [CygWin](http://www.cygwin.com/) are recommended for Windows users).

## Attendees of the RSE conference 2017
We will have both hands-on bits ans discussion slots, for this purpose we have set up an  [ Etherpad here](https://etherpad.wikimedia.org/p/RSE-reproNB).


### Getting started with the workshop materials
By now you should have a the RSE conference Virtual Machine already set in your personal laptop, which includes all the materials for this workshop.

You now need to follow[these notes](./user_setup_notes.md) to prepare for this tutorial.
