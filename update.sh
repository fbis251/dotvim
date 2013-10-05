#!/bin/bash
DOT_VIM_DIR="$HOME/.vim"

cd $DOT_VIM_DIR
echo "Updating main repository"
git pull

echo "Updating submodules"
git submodule foreach git pull origin master

echo "Update completed"
