" {{{1 Uncategorized
" Make any buffer able to be hidden even if not saved
set hidden
" no word wrap:
set nowrap
" Easier to launch new splits:
set splitbelow
set splitright
" When opening new files, look recursively into subdirectories
set path+=**
" The langugages I speak
set spelllang=en,he
filetype plugin on
" Default tex flavor
let g:tex_flavor = 'latex'
" file completion
set isfname-==

" {{{1 keys timeout
set timeoutlen=1000
" make the return to normal mode with escape not take too long and confuse me:
set ttimeoutlen=0

" {{{1 search
" highlight search during typing
set nohlsearch
" incremental search
set incsearch
" incremental substitution
if exists('&inccommand')
	set inccommand=split
end
" Smart case: case-sensitive when uppercase, otherwise - not.
set ignorecase
set smartcase

" {{{1 UI
" Colors
set autoread
syntax enable
colorscheme my
" who uses Ex mode?
map Q <nop>
" Only with tmux and rxvt this seems needed - we mind not to enable it for
" alacritty for example.
if $DISPLAY !=# '' &&
		\ $TERM !~ '^rxvt' && has('nvim') &&
		\ $ALACRITTY_LOG ==# ''
	set termguicolors
	" black
	let g:terminal_color_0 = '#282a2e'
	let g:terminal_color_8 = '#373b41'
	" red
	let g:terminal_color_1 = '#a54242'
	let g:terminal_color_9 = '#cc6666'
	" green
	let g:terminal_color_2 = '#8c9440'
	let g:terminal_color_10 = '#b5bd68'
	" yellow
	let g:terminal_color_3 = '#de935f'
	let g:terminal_color_11 = '#f0c674'
	" blue
	let g:terminal_color_4 = '#5f819d'
	let g:terminal_color_12 = '#81a2be'
	" magenta
	let g:terminal_color_5 = '#85678f'
	let g:terminal_color_13 = '#b294bb'
	" cyan
	let g:terminal_color_6 = '#5e8d87'
	let g:terminal_color_14 = '#8abeb7'
	" white
	let g:terminal_color_7 = '#707880'
	let g:terminal_color_15 = '#c5c8c6'
endif
set background=dark
" Always display the tabline, even if there is only one tab:
set showtabline=2
set list
if $DISPLAY !=# ''
	set showbreak=ˆ
	set listchars=tab:›\ ,trail:-,extends:»,precedes:«,eol:¬
else
	set showbreak=^
	set listchars=tab:>\ ,trail:-,extends:»,precedes:«,eol:¬
	" Used by ~/.zshrc and potentially other configs
	let $TERM_NO_ICONS_FONT=1
end
" Always display the statusline in all windows:
set laststatus=2
" Hide the default mode text (e.g. -- INSERT -- below the statusline):
set noshowmode
" enable mouse actions
set mouse=a
" folds
function! s:largeFiles()
	setlocal foldmethod=indent
	setlocal foldexpr=0
	lua require('cmp').setup.buffer { enabled = false }
	let b:nix_disable_fenced_highlight = 1
	let b:lexima_disabled = 1
endfunction
if has('nvim-0.7')
	set foldmethod=expr
	set foldexpr=nvim_treesitter#foldexpr()
endif
autocmd BufReadPre * if getfsize(expand("<afile>")) > 1024 * 1024 |
	\ call s:largeFiles() |
\ endif
" Currently disabled due to: https://github.com/ibhagwan/fzf-lua/issues/768
"autocmd BufEnter * if getfsize(expand("<afile>")) > 1024 * 1024 |
"	\ execute('NoMatchParen') |
"	\ else |
"	\ execute('DoMatchParen') |
"\ endif
set foldenable
" indentation rules, read more at :help indent.txt
let g:vim_indent_cont = &shiftwidth
set foldcolumn=2
" set lazyredraw only on ssh
if $SSH_CLIENT !=# ''
	set lazyredraw
endif

" {{{1 UX
" From some reason this is not the default on Vim, see
" https://vi.stackexchange.com/a/2163/6411
set backspace=indent,eol,start

" {{{1 tab's and indentation preferences:
set shiftwidth=4
set tabstop=4
set autoindent
set smartindent
set preserveindent
filetype indent on

" {{{1 backup and restore
set backupdir=~/.local/share/nvim/tmp//
set directory=~/.local/share/nvim/tmp//
set viewdir=~/.local/share/nvim/view//
" restore-view setting:
set viewoptions=cursor
" mks settings:
set sessionoptions=folds,help,resize,tabpages,winpos,winsize

" {{{1 Load local configuration, not using exrc since I use `prj-vim`
set modeline

" {{{1 Enable to add plugins via
if !empty($ENABLE_PLUGINS)
	let plugins_list = split($ENABLE_PLUGINS, ',')
	if exists(':packadd')
		for pl in plugins_list
			execute('packadd ' . pl)
		endfor
	else
		echoerr "You don't have :packadd available, hence $ENABLE_PLUGINS is not supported"
	endif
endif
" External Plugins - use pathogen only for old versions of vim
if !exists(':packadd')
	runtime pack/functional/opt/pathogen/autoload/pathogen.vim
	execute pathogen#infect()
end

" Load $HOST specific configuration
runtime host-specific/$HOST.vim

if executable('pplatex')
	let g:vimtex_quickfix_method = 'pplatex'
endif

" {{{1 Modeline
" vim: foldmethod=marker
