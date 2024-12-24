# Some OSes like Ubuntu/Mac expect bash_profile
# Redirect to bashrc
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi
# . "$HOME/.atuin/bin/env"
# export RSTUDIO_WHICH_R=/home/mpjw/miniforge3/envs/dataviz/bin/R
# export LD_LIBRARY_PATH=/home/mpjw/miniforge3/envs/dataviz/lib/R/lib:/home/mpjw/miniforge3/envs/dataviz/lib

