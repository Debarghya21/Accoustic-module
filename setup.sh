#!/bin/bash

# Clear cached dependencies
pip cache purge

# Upgrade pip, setuptools, and wheel
pip install --upgrade pip setuptools wheel

# Install dependencies without cache
pip install --no-cache-dir -r requirements.txt
