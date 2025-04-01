#!/bin/bash
python -m flask --app index.py db upgrade
python -m flask --app index.py db migrate
python -m gunicorn --bind 0.0.0.0:5000 index:app