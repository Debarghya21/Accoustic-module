#!/bin/bash
pip install --upgrade pip
pip cache purge
apt-get update && apt-get install -y python3.10 python3.10-venv python3.10-dev
update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.10 1
python3 -m pip install --upgrade pip
pip install --no-cache-dir -r requirements.txt
# Clear cached dependencies




# Upgrade pip, setuptools, and wheel
pip install --upgrade pip setuptools wheel

# Install dependencies without cache using Python 3.10
pip install --no-cache-dir -r requirements.txt

# Install dependencies without cache


# Install system dependencies
apt-get update && apt-get install -y llvm-dev

# Upgrade pip and install compatible NumPy version
pip install --upgrade pip
pip install numpy==1.22.0

# Install llvmlite separately before other dependencies
pip install llvmlite==0.41.1
