#!/bin/bash

apt-get update

apt-get install -y python-pip python-dev python-numpy python-scipy python-matplotlib ipython ipython-notebook python-pandas

pip install -U scikit-learn
