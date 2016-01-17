#!/bin/bash
DOT_VIM_DIR="$HOME/.vim"

cd $DOT_VIM_DIR
echo "Updating main repository"
git pull origin master

echo "Updating submodules"
git submodule init
git submodule update

echo "Making sure each submodule is updated"
git submodule foreach git pull origin master

echo "Update completed"
