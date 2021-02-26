sudo conda update -n base -c defaults conda -y

# Environment
conda install -c conda-forge cookiecutter -y
conda install jupyterlab -y
pip install -U pytest
pip install -U flake8
pip install -U Sphinx
# conda install -c conda-forge notebook -y
# conda install -c conda-forge jupyterlab -y
# conda install -c conda-forge jupyter_contrib_nbextensions
# conda install pylint -y

# AI
conda install tensorflow keras pytorch -y
conda install opencv -y

# math
conda install sympy


# Space Science
pip install -U spacepy


## install sunpy
# conda config --append channels conda-forge
conda install sunpy -y # 包含conda install astropy -y
# cookiecutter gh:astropy/package-template


conda clean -a -y





