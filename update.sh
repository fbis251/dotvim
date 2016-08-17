#!/bin/bash
DOT_VIM_DIR="$HOME/.vim"

cd $DOT_VIM_DIR
echo "Updating main repository"
git pull origin master

echo "Updating submodules"
git submodule update --init --recursive
git pull --recurse-submodules

echo "Update completed"
