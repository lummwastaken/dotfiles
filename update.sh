#!/usr/bin/env bash

rm .zshenv
cp ~/.zshenv .
rm .zshrc
cp ~/.zshrc .

rm .tmux.conf
cp ~/.tmux.conf .

rm -r .config
mkdir -p .config/kitty
cp -r ~/.config/kitty .config

mkdir -p .config/nvim
cp -r ~/.config/nvim .config

mkdir -p .config/fastfetch
cp ~/.config/fastfetch/config.jsonc .config/fastfetch
