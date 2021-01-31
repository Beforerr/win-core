sudo conda update -n base -c defaults conda -y

# Env
conda create -n AI
conda create -n scikit_learn
conda env remove -n AI

# # User
# conda install -c conda-forge notebook -y
# conda install -c conda-forge jupyterlab -y
# conda install -c conda-forge jupyter_contrib_nbextensions
# conda install pylint -y

# AI
conda install jupyterlab -y
conda install scipy -y
conda install tensorflow keras pytorch -y
conda install opencv -y

# Scikit_learn
conda create -n scikit_learn
pip install scikit_learn

pip uninstall pandas
pip uninstall tensorflow

# math

pip install sympy


# Space Science
pip install --upgrade spacepy
conda install astropy -y

## install sunpy
conda config --add channels conda-forge
conda config --set channel_priority strict
conda install sunpy



conda clean -a -y





