#!/bin/bash

# Update package lists
sudo apt update

# Install prerequisites (adjust as needed)
sudo apt install -y python3 python3-pip git build-essential

# Install Poetry
curl -sSL https://install.python-poetry.org | python3 -

# Create a virtual environment
poetry env use python3  # Adjust Python version if needed

# Initialize a new Poetry project
poetry init

# Add Flet dependency to pyproject.toml
echo -e "[tool.poetry]\nname = \"flet_project\"\nversion = \"0.1.0\"\ndescription = \"Flet based application\"\n\n[tool.poetry.dependencies]\npython = \"^3.11\"\nflet = \"^0.22.0\" ">> pyproject.toml

# Install dependencies
poetry install

