#!/bin/sh

. venv/bin/activate
cd biaffine-parser
python run.py evaluate -d=0 -f=../../models/ptb.char --feat=char --tree --fdata=../../data/test_dep.txt
deactivate
