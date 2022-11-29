#!/bin/bash

ln -s $PWD/starship.toml ~/.config/starship.toml
ln -s $PWD/.bash_profile ~/.bash_profile
ln -s $PWD/.bashrc ~/.bashrc

eval "$(source ~/.bash_profile)"