#!/bin/bash

ln -fs $PWD/starship.toml ~/.config/starship.toml
ln -fs $PWD/.bash_profile ~/.bash_profile
ln -fs $PWD/.bashrc ~/.bashrc

eval "$(source ~/.bash_profile)"