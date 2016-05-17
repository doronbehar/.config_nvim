# Vim files

So I decided to create a separate repository for my dotfiles just for vim. This way I'm able to fetch and pull changes right away when coming to a new computer.

#### Notes:
 - I use runtime and not source for it to be easy to reload from an existing vim session modifed files without specifing the whole path.
 - I use .config/nvim/filetype.vim for automatic filetype settings - I don't even have to use `runtime filetype.vim` in my init.vim
