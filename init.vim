" {{{1 Uncategorized
set nocompatible
" Make any buffer able to be hidden even if not saved
set hidden
" no word wrap:
set nowrap
set diffopt+=iwhite,vertical
" Easier to launch new splits:
set splitbelow
set splitright
" When opening new files, look recursively into subdirectories
set path+=**

" {{{1 Terminal
" make the return to normal mode with escape not take too long and confuse me:
set timeoutlen=1000
set ttimeoutlen=0

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
if expand("$DISPLAY") != "$DISPLAY"
	colorscheme my
else
	colorscheme default
end
set background=dark
" Always display the tabline, even if there is only one tab:
set showtabline=2
set list
if expand("$DISPLAY") != "$DISPLAY"
	set showbreak=ˆ
	set listchars=tab:›\ ,trail:-,extends:»,precedes:«,eol:¬
else
	set showbreak=^
	set listchars=tab:>\ ,trail:-,extends:»,precedes:«,eol:¬
end
" Always display the statusline in all windows:
set laststatus=2
" Hide the default mode text (e.g. -- INSERT -- below the statusline):
set noshowmode
" Change the Cursor shape for insert and other modes
if has('nvim')
	set guicursor=n-v-c:block
		\,i-ci-ve:ver25,r-cr:hor20,o:hor50
		\,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
		\,sm:block-blinkwait175-blinkoff150-blinkon175
end
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
if isdirectory('/usr/share/vifm/vim')
	set rtp+=/usr/share/vifm/vim
end
" External Plugins - use pathogen only for old versions of vim
if !exists(':packadd')
	runtime bundle/pathogen@tpope/autoload/pathogen.vim
	let g:pathogen_disabled = ['']
	execute pathogen#infect()
	" make reading help documents for Plugins easier:
	Helptags
else
	execute('silent! helptags ALL')
end

" {{{1 Modeline
" vim: foldmethod=marker
