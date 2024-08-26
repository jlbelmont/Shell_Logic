#!/bin/bash

# Ensure conda is available
if ! command -v conda &> /dev/null
then
    echo "Conda could not be found. Please install Miniconda or Anaconda and try again."
    exit
fi

# Create the conda environment from the environment.yml file
conda env create -f environment.yml

# Activate the conda environment
source $(conda info --base)/etc/profile.d/conda.sh
conda activate finenv

echo "Environment 'finenv' is activated. To deactivate, use 'conda deactivate'."
