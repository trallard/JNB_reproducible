FROM debian:stretch
MAINTAINER Will Furnass
LABEL version="1.0.0"
LABEL vendor="University of Sheffield"
LABEL release-date="2017-08-03"
LABEL version.is-production="true"

# Install the OS packages needed (inc Python 3.5)
RUN apt-get update && apt-get install -y \
        bzip2 \
        curl \
        git \
        python3.5 \
        python3-venv \
        vim-tiny \
        nano \
        && \
    rm -r /var/lib/apt/lists/*

# Create user for running Jupyter as
# (but don't switch to it yet as we still need to chown)
RUN useradd --create-home --shell /bin/bash jupyter

# Become unprivileged jupyter user
USER jupyter

# Create a Python 3.5 virtual environment
COPY requirements.txt /tmp/requirements.txt
RUN python3.5 -m venv /home/jupyter/.venvs/rse_conf_2017
ENV PATH="/home/jupyter/.venvs/rse_conf_2017/bin:${PATH}"
ENV VIRTUAL_ENV=/home/jupyter/.venvs/rse_conf_2017
RUN pip3.5 install wheel && \
    pip3.5 install -r /tmp/requirements.txt && \
    rm -rf /home/jupyter/.cache/pip

# Copy in tutorial materials
# and Jupyter config + bash aliases to simplify command-lines
# (do this last so we need to rebuild fewer layers
# if the workshop source material changes)
USER root
RUN mkdir /home/jupyter/JNB_reproducible /home/jupyter/.jupyter
COPY . /home/jupyter/JNB_reproducible
COPY jupyter_notebook_config.py /home/jupyter/.jupyter
COPY bash_aliases /home/jupyter/.bash_aliases
RUN chown -R jupyter:jupyter /home/jupyter/JNB_reproducible /home/jupyter/.jupyter /home/jupyter/.bash_aliases 

# Connections to:
# - Jupyter Notebooks are via port 65000
# - nbdiff-web are via port 65001
EXPOSE 65000
EXPOSE 65001

USER jupyter

# Switch to the dir containing our material
WORKDIR /home/jupyter/JNB_reproducible

# Start the Jupyter Notebook Server
CMD ["jupyter", "notebook"]
