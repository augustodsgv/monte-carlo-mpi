#!/bin/bash
sudo apt update && sudo -y \
                        apt install \
                        python3-dev \
                        python3-venv \
                        libopenmpi-dev
                        
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
python -c "from mpi4py import MPI"