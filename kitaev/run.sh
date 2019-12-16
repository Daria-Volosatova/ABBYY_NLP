#!/bin/sh

. venv/bin/activate
cd self-attentive-parser/
python src/main.py test --model-path-base ../../models/en_charlstm_dev.93.61.pt
deactivate
