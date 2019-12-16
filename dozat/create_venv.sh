#!/bin/sh

virtualenv -p python3.7 venv/
. venv/bin/activate
wget https://download.pytorch.org/whl/cpu/torch-1.3.0%2Bcpu-cp37-cp37m-linux_x86_64.whl
pip install torch-1.3.0+cpu-cp37-cp37m-linux_x86_64.whl
rm torch-1.3.0+cpu-cp37-cp37m-linux_x86_64.whl
pip install -r requirements.txt
deactivate
