<# # Conda 安装
wget -c https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
rm Miniconda3-latest-Linux-x86_64.sh
# If you'd prefer that conda's base environment not be activated on startup,
   # set the auto_activate_base parameter to false:
# conda config --set auto_activate_base false
conda update --all -y

bash -c "tee ~/.condarc > /dev/null <<EOT
channels:
  - defaults
show_channel_urls: true
default_channels:
  - https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/main
  - https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/r
  - https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/msys2
custom_channels:
  conda-forge: https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud
  msys2: https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud
  bioconda: https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud
  menpo: https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud
  pytorch: https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud
  simpleitk: https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud
EOT
" #>



pip config set global.index-url http://mirrors.aliyun.com/pypi/simple/
pip config set install.trusted-host mirrors.aliyun.com
# pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple

conda update --all -y
# sudo conda update -n base -c defaults conda -y

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




# Visualization
conda install seaborn -y