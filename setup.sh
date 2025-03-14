#!/bin/bash
pip install --upgrade pip
pip cache purge
apt-get update && apt-get install -y python3.10 python3.10-venv python3.10-dev
update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.10 1
python3 -m pip install --upgrade pip
pip install --no-cache-dir -r requirements.txt
# Clear cached dependencies

#!/bin/bash

echo "Starting setup.sh execution..."

# Upgrade system packages
apt-get update && apt-get install -y python3.10 python3.10-venv python3.10-dev llvm-dev python3-distutils

# Ensure Python 3.10 is the default
update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.10 1

# Upgrade pip, setuptools, and wheel
python3 -m pip install --upgrade pip setuptools wheel

# Install required Python packages
pip install --no-cache-dir numpy==1.21.6 llvmlite==0.41.1 -r requirements.txt

echo "Setup complete!"
