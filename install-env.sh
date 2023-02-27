#! bin/bash
# set -eo pipefail

brew update

if [ $? -ne 0 ]; then

  script=$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)
  bash -c $script
  echo "export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles"
  echo "export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.ustc.edu.cn/homebrew-core.git""
  source ~/.zshrc
  brew update
fi 


# curl https://repo.anaconda.com/archive/Anaconda3-2022.10-MacOSX-arm64.sh -sSL | sh
brew install --cask anaconda

curl https://sh.rustup.rs -sSf | sh -s -- -y

source "$HOME/.cargo/env"
source ~/.zshrc
conda list
if [ $? -ne 0 ]; then
  echo "export PATH="/opt/homebrew/anaconda3/bin:$PATH"" >> ~/.zshrc
  source ~/.zshrc
fi
conda init zsh