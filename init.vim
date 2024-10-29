    set runtimepath^=$HOME/.config/nvim/.vim runtimepath+=$HOME/.config/nvim/.vim/after
    let &packpath = &runtimepath
    source $HOME/.config/nvim/.vimrc
