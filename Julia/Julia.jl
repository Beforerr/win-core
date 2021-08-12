# [julia | 镜像站使用帮助 | 清华大学开源软件镜像站 | Tsinghua Open Source Mirror](https://mirrors.tuna.tsinghua.edu.cn/help/julia/)
using Pkg;Pkg.add("JuliaZH")
using JuliaZH
JuliaZH.mirrors
# JuliaZH.set_mirror("BFSU") #临时使用
JuliaZH.generate_startup("USTC")
Pkg.Registry.rm("General")
Pkg.Registry.add("General")



