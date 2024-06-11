#!/bin/bash -e

# Update package lists
sudo apt update

# Install prerequisites
sudo apt install -y python3.11 python3-pip git build-essential

# Install Poetry
if ! which poetry; then
      curl -sSL https://install.python-poetry.org | python3 -
fi

# Extend PATH to also look at ~/.local/bin where Poetry is located
if ! grep poetry ~/.profile; then
      echo 'export PATH="~/home/vagrant/.local/bin:$PATH"' >> ~/.profile
fi 

# Use Python 3.11 for the virtual environment
cd /vagrant
poetry env use python3.11 

# Tools needed for Flutter installation
which bash file mkdir rm

#Installation of Flutter Prerequisites
sudo apt upgrade -y
echo "foo"
sudo apt install -y curl git unzip xz-utils zip libglu1-mesa

echo "foobar"
# TODO combine this with the apt install line above
sudo apt install -y \
      clang cmake git \
      ninja-build pkg-config \
      libgtk-3-dev liblzma-dev \
      libstdc++-12-dev


# TODO: Make this idempotent
# Download Flutter SDK 
if [ ! -f "flutter_linux_3.22.2-stable.tar.xz" ]; then
  curl -sL https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.22.2-stable.tar.xz
fi
tar -xvJf flutter_linux_3.22.2-stable.tar.xz

# TODO: Make this idempotent
# Move Flutter to a permanent location 
# TODO: Skip moving if flutter directory is already in place at /opt/flutter
if [ ! -d "/opt/flutter" ]; then
  sudo mv flutter /opt/flutter
fi

# TODO: make idempotent like extending PATH for poetry, also use .profile
# Add Flutter to PATH 
#echo 'export PATH=$PATH:/opt/flutter/bin' >> ~/.bashrc

if ! grep -q ':/opt/flutter/bin' ~/.profile; then
  echo 'export PATH=$PATH:/opt/flutter/bin' >> ~/.profile
fi

# Source the updated bashrc (optional, but recommended for immediate use)
source ~/.bashrc

# Add Flet dependency to pyproject.toml
#echo -e "[tool.poetry]\nname = \"flet_project\"\nversion = \"0.1.0\"\ndescription = \"Flet based application\"\n\n[tool.poetry.dependencies]\npython = \"^3.11\"\nflet = \"^0.22.0\" ">> pyproject.toml

# Install dependencies
poetry install --no-root

