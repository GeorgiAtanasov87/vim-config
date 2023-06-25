FROM ubuntu:rolling

RUN apt update && apt install -y software-properties-common \
  build-essential gcc cmake npm python3-venv python3-pip python3-pylsp

RUN apt-get install -y ninja-build gettext cmake unzip curl git
WORKDIR /root

RUN git clone https://github.com/neovim/neovim && cd /root/neovim && \
  git checkout release-0.9 &&  make CMAKE_BUILD_TYPE=RelWithDebInfo && \
  cd /root/neovim && make install

RUN apt-get update && apt-get install tree ripgrep exuberant-ctags -y

RUN git clone --depth 1 https://github.com/wbthomason/packer.nvim\
  ~/.local/share/nvim/site/pack/packer/start/packer.nvim
RUN mkdir -p /root/.config/nvim

COPY ./nvim/ /root/.config/nvim/

RUN nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'

RUN npm i -g pyright

RUN nvim --headless -c 'TSInstall python' -c qall

RUN nvim --headless -c "LspInstall pylsp" -c qall
RUN nvim --headless -c "MasonInstall flake8" -c qall

ENTRYPOINT [ "/bin/bash" ]
