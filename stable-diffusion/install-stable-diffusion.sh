#!/bin/bash

# Install Pyenv prerequisites
sudo apt install -y make build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev \
libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev git

# Install Pyenv
curl https://pyenv.run | bash

# Install Python 3.10
pyenv install 3.10

# Make it global
pyenv global 3.10

# Install Stable Diffusion
wget -q https://raw.githubusercontent.com/AUTOMATIC1111/stable-diffusion-webui/master/webui.sh

# Make it executable
chmod +x webui.sh

# Run it
./webui.sh --listen --api

