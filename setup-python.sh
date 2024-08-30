#!/bin/bash
sudo apt update && sudo apt install -y  \
                        python3-dev \
                        python3-venv \
                        libopenmpi-dev
                        
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
python -c "from mpi4py import MPI"