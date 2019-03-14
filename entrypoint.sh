#!/bin/bash
pip3 install -r /src/backend/requirements.txt
cd /src/frontend
npm install npm@latest -g
npm install
npm run build
cd /src
python3 run.py