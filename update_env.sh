#!/bin/bash

# Activate the conda environment
source $(conda info --base)/etc/profile.d/conda.sh
conda activate finenv

# Export the current environment to environment.yml
conda env export --from-history > environment.yml

echo "environment.yml updated with the current environment."

