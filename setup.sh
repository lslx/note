#!/bin/bash

cp .vimrc ~/.vimrc
cp .bash_profile_port ~/.bash_profile_port
echo '. ~/.bash_profile_port'>>~/.profile
echo '. ~/.bash_profile_port'>>~/.bashrc
# this not work , because can not export use this form
# . ~/.bash_profile_port
