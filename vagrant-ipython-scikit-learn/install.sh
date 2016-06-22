#!/bin/bash

apt-get update

apt-get install -y python-pip python-dev python-numpy python-scipy python-matplotlib python-pandas

# install ipython2 ... see "Data Science box (DSbox)"
sudo pip install jupyter

sudo python2 -m ipykernel install

pip install -U scikit-learn
