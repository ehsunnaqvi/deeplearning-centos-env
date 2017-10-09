#!/usr/bin/env bash
# Exit immediately when a command or pipeline has non-zero status (error) 
set -e
# Show the commands which are being run on standard output
set -x
# Exit immediately on encountering an undefined variable
set -u
# Exit immediately if a pipeline fails
set -o pipefail
IFS=$'\n\t'

# Download Anaconda into downloads folder
cd ~/downloads
wget https://repo.continuum.io/archive/Anaconda3-5.0.0.1-Linux-x86_64.sh 
bash Anaconda3-5.0.0.1-Linux-x86_64.sh -b
echo "export PATH=\"$HOME/anaconda3/bin:\$PATH\"" > ~/.bashrc
source ~/.bashrc

# Columnar, chunked and compressed data containers
conda install -y bcolz
# Set of iterators, functions and dictionaries
conda install -y -c anaconda toolz=0.8.2
# Upgrade all 
conda upgrade -y -all
