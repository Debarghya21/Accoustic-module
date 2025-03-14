#!/bin/bash
pip install --upgrade pip

PYTHON_EXEC=$(which python3.10 || which python3)
# Clear cached dependencies
pip cache purge



# Upgrade pip, setuptools, and wheel
$PYTHON_EXEC -m pip install --upgrade pip setuptools wheel

# Install dependencies without cache using Python 3.10
$PYTHON_EXEC -m pip install --no-cache-dir -r requirements.txt

# Install dependencies without cache


# Install system dependencies
apt-get update && apt-get install -y llvm-dev

# Upgrade pip and install compatible NumPy version
pip install --upgrade pip
pip install numpy==1.22.0

# Install llvmlite separately before other dependencies
pip install llvmlite==0.41.1
