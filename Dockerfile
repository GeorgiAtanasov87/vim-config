FROM ubuntu:rolling

RUN apt update && apt install software-properties-common build-essential gcc -y
RUN add-apt-repository ppa:neovim-ppa/unstable
RUN apt-get update && apt-get install curl git neovim python3-neovim tree ripgrep -y

RUN git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
RUN mkdir -p /root/.config/nvim

COPY ./nvim/ /root/.config/nvim/

ENTRYPOINT [ "/bin/bash" ]
