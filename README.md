# Installation
    git clone git://github.com/fbis251/dotvim.git ~/.vim
    ln -s ~/.vim/.vimrc ~/.vimrc
    ln -s ~/.vim/.vimrc ~/.gvimrc

### Create neovim links
    mkdir -p ${XDG_CONFIG_HOME:=$HOME/.config}
    ln -s ~/.vim $XDG_CONFIG_HOME/nvim
    ln -s ~/.vimrc $XDG_CONFIG_HOME/nvim/init.vim

### Initialize and update the submodules
    cd ~/.vim
    git submodule update --init --recursive
    git pull --recurse-submodules

# Keeping everything up to date
### The easy way
    cd ~/.vim
    ./update.sh

### The hard way (in which you have to memorize the commands)
    cd ~/.vim
    git pull --recurse-submodules
