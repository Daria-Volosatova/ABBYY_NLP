#!/bin/sh

virtualenv -p python3.6 venv/
. venv/bin/activate
wget https://download.pytorch.org/whl/cpu/torch-1.1.0-cp36-cp36m-linux_x86_64.whl
pip install torch-1.1.0-cp36-cp36m-linux_x86_64.whl
rm torch-1.1.0-cp36-cp36m-linux_x86_64.whl
pip install -r requirements.txt
cd RUN wget https://download.pytorch.org/whl/cpu/torch-1.1.0-cp36-cp36m-linux_x86_64.whl
RUN pip install torch-1.1.0-cp36-cp36m-linux_x86_64.whl
RUN rm torch-1.1.0-cp36-cp36m-linux_x86_64.whl
cd self-attentive-parser/EVALB
make
deactivate
