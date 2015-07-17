#!/bin/bash
cd /pipeline/source
pip install -r requirements.txt
mkdir /flask
cp -r static server.py /flask
cd /flask
python server.py