FROM debian:stretch
MAINTAINER Will Furnass
LABEL version="0.0.3-beta"
LABEL vendor="University of Sheffield"
LABEL release-date="2017-08-03"
LABEL version.is-production="false"

# Install the OS packages needed (inc Python 3.5)
RUN apt-get update && apt-get install -y \
        bzip2 \
        curl \
        git \
        python3.5 \
        python3-venv \
        && \
    rm -r /var/lib/apt/lists/*

# Ensure Jupyter can be run as a non-privileged user
RUN useradd --create-home --shell /bin/bash jupyter
USER jupyter
WORKDIR /home/jupyter

# Create a Python 3.5 virtual environment
COPY requirements.txt /tmp/requirements.txt
RUN python3.5 -m venv /home/jupyter/.venvs/rse_conf_2017
ENV PATH="/home/jupyter/.venvs/rse_conf_2017/bin:${PATH}"
ENV VIRTUAL_ENV=/home/jupyter/.venvs/rse_conf_2017
RUN pip3.5 install wheel && pip3.5 install -r /tmp/requirements.txt

# Copy in tutorial materials
COPY *.ipynb *cfg /home/jupyter/

# Connections to Jupyter Notebooks are via port 65000
EXPOSE 65000

# Start the Jupyter Notebook Server
CMD ["jupyter", "notebook", "--port=65000", "--no-browser"]
