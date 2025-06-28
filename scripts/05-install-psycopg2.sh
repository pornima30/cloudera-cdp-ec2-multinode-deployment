#!/bin/bash
# Install psycopg2 Python package for Cloudera Manager

sudo apt install python -y
curl 'https://bootstrap.pypa.io/pip/2.7/get-pip.py' > get-pip.py
sudo python get-pip.py
sudo pip install psycopg2==2.7.5 --ignore-installed
