#!/bin/sh 

# [julia | 镜像站使用帮助 | 清华大学开源软件镜像站 | Tsinghua Open Source Mirror](https://mirrors.tuna.tsinghua.edu.cn/help/julia/)
pip install jill --user -U
# fish setting
set -U fish_user_paths $HOME/.local/bin/ $fish_user_paths
jill install --confirm

# Julia
# julia ./Julia.jl