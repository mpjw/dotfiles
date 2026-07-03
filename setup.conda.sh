#!/usr/bin/bash

# Install conda on debian system and setup conda envs
# * TODO: add parameters to determine which envs are created

# install miniforge
conda_link="https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh"
wget -P ~/Downloads/ "$conda_link"
chmod u+x ~/Downloads/"$(basename "$conda_link")"
~/Downloads/"$(basename "$conda_link")"

# set mamba solver
conda update -n base conda
conda install -n base conda-libmamba-solver
conda config --set solver libmamba

# install conda envs for data science, bioinformatics, and single-cell analysis
mamba env create -n ds -f "$HOME/dotfiles/env/conda/datascience.conda.yaml" -y

mamba env create -n cb -f "$HOME/dotfiles/env/conda/bioinformatics.conda.yaml" -y

mamba env create -n sc -f "$HOME/dotfiles/env/conda/singlecell.conda.yaml" -y
