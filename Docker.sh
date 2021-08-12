docker pull ufoym/deepo
docker run --gpus all -it -v $HOME/OneDrive/zijin:/data -v /host/config:/config ufoym/deepo bash
docker run --gpus all -it -p 8888:8888 --ipc=host ufoym/deepo jupyter notebook --no-browser --ip=0.0.0.0 --allow-root --NotebookApp.token= --notebook-dir='/root'

nvidia-docker pull registry.baidubce.com/paddlepaddle/paddle:2.1.1-gpu-cuda11.2-cudnn8