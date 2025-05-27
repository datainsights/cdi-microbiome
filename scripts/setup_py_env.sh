#!/bin/bash

# Set script to fail on any error
set -e

# 🐍 Name your environment folder
PYENV_NAME="pyenv"

# 🛠️ Create virtual environment
python3 -m venv "$PYENV_NAME"

# 🔁 Activate virtual environment
source "$PYENV_NAME/bin/activate"

# 📦 Upgrade pip
pip install --upgrade pip

# 📄 Install packages from requirements.txt
if [ -f requirements.txt ]; then
    pip install -r requirements.txt
    echo "✅ Python packages installed from requirements.txt"
else
    echo "❌ requirements.txt not found!"
    exit 1
fi

echo "✅ Python environment setup complete in ./$PYENV_NAME/"