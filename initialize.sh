#!/bin/bash

# Install Xcode Command Line Tools
xcode-select --install

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Basic Homebrew packages
brew install git

# setup project clone
mkdir -p ~/.setup
git clone git@github.com:ACodeFarmer/setup.git ~/.setup
cd ~/.setup

# Install Homebrew packages
brew bundle install

# Pipx Post Installation
pipx ensurepath
sudo pipx ensurepath --global

cd ~/

# Finalize
echo "기본 시스템 설치가 완료되었습니다. 비공개 패키지 설치를 진행해주세요."
echo "1Password 계정에 로그인 하고 설정에서 CLI 기능을 활성화 하세요."

