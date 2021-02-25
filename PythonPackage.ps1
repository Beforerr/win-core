sudo conda update -n base -c defaults conda -y

# Env
# conda create -n AI
# conda create -n scikit_learn
# conda env remove -n AI

# # User
# conda install -c conda-forge notebook -y
# conda install -c conda-forge jupyterlab -y
# conda install -c conda-forge jupyter_contrib_nbextensions
# conda install pylint -y

# AI
conda install jupyterlab -y
conda install tensorflow keras pytorch -y
conda install opencv -y

# math
conda install sympy


# Space Science
pip install --upgrade spacepy


## install sunpy
conda config --append channels conda-forge
conda install sunpy # 包含conda install astropy -y


conda clean -a -y





