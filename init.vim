" {{{1 Uncategorized
set nocompatible
" no word wrap:
set nowrap
" Make any buffer able to be hidden even if not saved
set hidden
if &diff
	set diffopt+=iwhite
endif
" Easier to launch new splits:
set splitbelow
set splitright
" When opening new files, look recursively into subdirectories
set path+=**

" {{{ Terminal
set encoding=utf8
set tenc=utf8
set t_Co=256
" make the return to normal mode with escape not take too long and confuse me:
set timeoutlen=1000
set ttimeoutlen=0
" Define keys actions
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" {{{1 search
" highlight search during typing
set nohlsearch
" incremental search
set incsearch
" incremental substitution
set inccommand=split
" Smart case: case-sensitive when uppercase, otherwise - not.
set smartcase

" {{{1 UI
" Colors
filetype plugin on
filetype indent on
set autoread
syntax enable
colorscheme my
set background=dark
" Always display the tabline, even if there is only one tab:
set showtabline=2
set list listchars=tab:›\ ,trail:-,extends:»,precedes:«,eol:¬
set showbreak=ˆ
" Always display the statusline in all windows:
set laststatus=2
" Hide the default mode text (e.g. -- INSERT -- below the statusline):
set noshowmode
" Change the Cursor shape for insert and other modes
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
" enable mouse actions
set mouse=a
" folds
set foldenable
set foldmethod=indent
set foldcolumn=2

" {{{1 tab's and indentation preferences:
set shiftwidth=4
set tabstop=4
set autoindent
set smartindent
set preserveindent
set noexpandtab

" {{{1 backup and restore
set backupdir=~/.local/share/nvim/tmp//
set directory=~/.local/share/nvim/tmp//
set viewdir=~/.local/share/nvim/view//
" restore-view setting:
set viewoptions=folds,cursor
" mks settings:
set sessionoptions=folds,help,resize,tabpages,winpos,winsize

" {{{1 Load local configuration
" Load nvimrc's in the directory the file is being launched from.
set modeline
set exrc
set secure

" {{{1 runtime
" Add vifm runtime files to rtp:
set rtp+=/usr/share/vifm/vim
" External Plugins
" Make plugin installations easy and use github-plugins from bundle:
runtime bundle/pathogen@tpope/autoload/pathogen.vim
let g:pathogen_disabled = ['']
execute pathogen#infect()
" make reading help documents for Plugins easier:
Helptags

" {{{1 Modeline
" vim: foldmethod=marker
