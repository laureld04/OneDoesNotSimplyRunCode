# Base image
FROM continuumio/miniconda3:latest

# Set working directory
WORKDIR /opt

# Install git
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

# Clone brkraw repository
RUN git clone -b json_creation_fix https://github.com/araikes/brkraw.git

# Copy local shleeh folder into container (must contain setup.py)
COPY shleeh/ /opt/shleeh/

# Optional: remove shleeh from brkraw setup.py to prevent pip from fetching from PyPI
RUN sed -i "s/'shleeh>=0.1.0',//" /opt/brkraw/setup.py

# Create conda environment and install base dependencies
RUN conda create -n brkraw_env python=3.10 -y && \
    conda run -n brkraw_env pip install --upgrade pip && \
    conda run -n brkraw_env pip install SimpleITK pandas==1.5.3

# Install local shleeh first (editable mode)
RUN conda run -n brkraw_env pip install -e /opt/shleeh

# Install brkraw in editable mode
RUN conda run -n brkraw_env pip install -e /opt/brkraw

# Set entrypoint to use brkraw inside the conda environment
ENTRYPOINT ["conda", "run", "--no-capture-output", "-n", "brkraw_env", "brkraw"]