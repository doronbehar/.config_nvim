# Vim files

So I decided to create a separate repository for my dotfiles just for vim. This way I'm able to fetch and pull changes right away when coming to a new computer.

### Notes:
- I use Neovim and not Vim just because of a small set of features available in Neovim and not in Vim. I don't hate Vim.
- I use `plugin/` for separating certain configuration files from `init.vim` - It's great because I don't have to source them in `init.vim` or `runtime` them.
- I use `autoload/<source-site>/<hint-to-page>.vim` for functions taken from various websites.
- I use `filetype.vim` for automatic filetype settings - I don't even have to use `runtime filetype.vim` in `init.vim`.
- I use [pathogen](https://github.com/tpope/vim-pathogen) as my plugin manager and [github.com/vim-scripts](https://github.com/vim-scripts) for plugins from [vim.org](https://www.vim.org).
