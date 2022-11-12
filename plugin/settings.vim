" {{{1 netrw
" https://vi.stackexchange.com/questions/14622/how-can-i-close-the-netrw-buffer
let g:netrw_fastbrowse = 0
" }}}

" {{{ Airline:
let g:airline#extensions#disable_rtp_load = 1
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#keymap#enabled = 1
let g:airline#extensions#branch#format = 0
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
if $DISPLAY ==# ''
	let g:airline_powerline_ascii = 1
	let g:airline_symbols.maxlinenr = ''
	let g:airline_symbols.linenr = ' '
	let g:airline_symbols.crypt = 'crypt'
	let g:airline_symbols.branch = '|'
	let g:airline_symbols.whitespace = ' '
	let g:airline#extensions#whitespace#symbol = '!'
	let g:airline_symbols.keymap = 'KEYS:'
else
	let g:airline_symbols.maxlinenr = 'Ξ'
	let g:airline_powerline_fonts = 1
	let g:airline_symbols.keymap = '⌨'
end
" }}}

" {{{ Android:
let g:android_sdk_path = $ANDROID_HOME
" }}}

" {{{ WindowSwap
let g:windowswap_map_keys = 0 "prevent default bindings
nnoremap <silent> <leader><leader>b :call WindowSwap#EasyWindowSwap()<CR>
" }}}

" {{{ togglelist
let g:toggle_list_no_mappings = 1
augroup toggleList
	autocmd FileType * if &ft != 'tex' | nmap <silent> <leader>l :call ToggleLocationList()<CR> | endif
	autocmd FileType * if &ft != 'tex' | nmap <silent> <leader>q :call ToggleQuickfixList()<CR> | endif
augroup END
" }}}

" {{{ debug adaptor
nnoremap <silent> <leader>c :lua require'dap'.continue()<CR>
nnoremap <silent> <leader>o :lua require'dap'.step_over()<CR>
nnoremap <silent> <leader>s :lua require'dap'.step_into()<CR>
nnoremap <silent> <leader>u :lua require'dap'.step_out()<CR>
nnoremap <silent> <leader>b :lua require'dap'.toggle_breakpoint()<CR>
nnoremap <silent> <leader>B :lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>
nnoremap <silent> <leader>lp :lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>
nnoremap <silent> <leader>dr :lua require'dap'.repl.toggle()<CR>
nnoremap <silent> <leader>dl :lua require'dap'.run_last()<CR>
" https://github.com/mfussenegger/nvim-dap-python#mappings
nnoremap <silent> <leader>dn :lua require('dap-python').test_method()<CR>
nnoremap <silent> <leader>df :lua require('dap-python').test_class()<CR>
vnoremap <silent> <leader>ds <ESC>:lua require('dap-python').debug_selection()<CR>
" See :help dao-completion
au FileType dap-repl lua require('dap.ext.autocompl').attach()
" To immitate what happens in plugin/terminal-maps.vim
au FileType dap-repl inoremap <C-\><C-\> <C-c>
lua << EOF
local dap = require('dap')
-- https://github.com/rcarriga/nvim-dap-ui#usage
local dapui = require("dapui")
dapui.setup()
-- Open the dap-ui whenever dap is launching: https://github.com/rcarriga/nvim-dap-ui#usage
dap.listeners.after.event_initialized["dapui_config"] = function()
	dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
	dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
	dapui.close()
end
-- https://github.com/mfussenegger/nvim-dap-python#usage
require('dap-python').setup('python')
-- https://github.com/leoluz/nvim-dap-go#register-the-plugin
require('dap-go').setup()
-- See :help dap-configuration
dap.configurations = {
	python = {
		{
			type = 'python';
			request = 'launch';
			name = "Launch file";
			program = "${file}";
			pythonPath = 'python';
		}
	},
	go = {
		{
			type = "go",
			name = "Debug Package",
			request = "launch",
			program = "${fileDirname}",
		}
	}
}
EOF
" }}}

" {{{ bbye
cabbrev bd Bdelete
cabbrev bdel Bdelete
cabbrev bdelete Bdelete
" }}}

" {{{ Rooter
let g:rooter_manual_only = 1
" }}}

" {{{ tmux-navigator
let g:tmux_navigator_disable_when_zoomed = 1
" We don't want the <c-\> which I never use
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
" }}}

" {{{ For prj - https://github.com/emersonmx/vim-prj/blob/master/plugin/prj.vim
let g:prj_config_path = ".vim/vimrc"
" }}}

" {{{ editorconfig
let g:EditorConfig_exclude_patterns = ['fugitive://.*']
" }}}

" {{{ fzf.vim
command! -bar -bang -nargs=? -complete=buffer Buffers call
	\ fzf#vim#buffers(
	\ <q-args>,
	\ {'options': [
	\ '--bind=D:execute@nvr -c "bw $(echo {+1} | sed "s/\[\([0-9]\)\]/\1/g")"@+reload@nvr --remote-expr "join(map(fzf#vim#buflisted_sorted(), \"fzf#vim#format_buffer(v:val)\"), \"\n\")"@',
	\ '--multi'
	\ ]},
	\ <bang>0)
" }}}

" {{{ nerdcommenter
let g:NERDSpaceDelims = 1
let g:NERDComDefaultDelims = 1
" }}}

" {{{ fugitive
let g:fugitive_legacy_commands = 1
command! Gcommend Gcommit --amend --no-edit
let g:fugitive_gitlab_domains = [
	\ 'https://gitlab.gnome.org',
	\ 'https://git.jami.net/',
	\ 'https://gitlab.freedesktop.org'
	\]
" See :help fugitive-gitlab-config
let g:gitlab_api_keys = {
	\ 'gitlab.com': $GITLAB_API_PRIVATE_TOKEN,
	\}
" }}}

" {{{ gundo
let g:gundo_prefer_python3 = 1
" }}}

" {{{ treesitter
lua <<EOF
require'nvim-treesitter.configs'.setup {
	highlight = {
		enable = true,
		disable = function(lang, bufnr)
			-- including vim for the sake of Lua blocks inside VimL
			if lang == "nix" then
				return true
			end
			return false
		end
	},
	textobjects = {
		select = {
			enable = true,
			-- Automatically jump forward to textobj, similar to targets.vim
			lookahead = true,
			keymaps = {
				-- You can use the capture groups defined in textobjects.scm
				["af"] = "@function.outer",
				["if"] = "@function.inner",
				["ac"] = "@class.outer",
				["ic"] = "@class.inner",
			},
			-- You can choose the select mode (default is charwise 'v')
			selection_modes = {
				['@parameter.outer'] = 'v', -- charwise
				['@function.outer'] = 'V', -- linewise
				['@class.outer'] = '<c-v>', -- blockwise
			},
			-- If you set this to `true` (default is `false`) then any textobject is
			-- extended to include preceding xor succeeding whitespace. Succeeding
			-- whitespace has priority in order to act similarly to eg the built-in
			-- `ap`.
			include_surrounding_whitespace = true,
		},
	},
}
EOF
" }}}

" {{{ sandwich
runtime macros/sandwich/keymap/surround.vim
let g:sandwich#recipes += [
\   {'buns': ['{ ', ' }'], 'nesting': 1, 'match_syntax': 1,
\    'kind': ['add', 'replace'], 'action': ['add'], 'input': ['{']},
\
\   {'buns': ['[ ', ' ]'], 'nesting': 1, 'match_syntax': 1,
\    'kind': ['add', 'replace'], 'action': ['add'], 'input': ['[']},
\
\   {'buns': ['( ', ' )'], 'nesting': 1, 'match_syntax': 1,
\    'kind': ['add', 'replace'], 'action': ['add'], 'input': ['(']},
\
\   {'buns': ['{\s*', '\s*}'],   'nesting': 1, 'regex': 1,
\    'match_syntax': 1, 'kind': ['delete', 'replace', 'textobj'],
\    'action': ['delete'], 'input': ['{']},
\
\   {'buns': ['\[\s*', '\s*\]'], 'nesting': 1, 'regex': 1,
\    'match_syntax': 1, 'kind': ['delete', 'replace', 'textobj'],
\    'action': ['delete'], 'input': ['[']},
\
\   {'buns': ['(\s*', '\s*)'],   'nesting': 1, 'regex': 1,
\    'match_syntax': 1, 'kind': ['delete', 'replace', 'textobj'],
\    'action': ['delete'], 'input': ['(']},
\ ]
" }}}

" {{{ Dispatch
let g:dispatch_no_maps = 1
" }}}

" {{{ lf.vim
command! -nargs=+ LF call lf#LF(<f-args>, [
	\ '-command', 'map e push l',
	\ '-command', 'map O $gio open $f'
	\])
nnoremap <leader>e :LF %:p edit<CR>
" }}}

" {{{ LSP & completion
set completeopt=menu,menuone,noselect
lua <<EOF
-- Set up nvim-cmp.
local has_words_before = function()
	local line, col = unpack(vim.api.nvim_win_get_cursor(0))
	return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end
local feedkey = function(key, mode)
	vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
end
local cmp = require'cmp'
cmp.setup({
	snippet = {
		expand = function(args)
			vim.fn["vsnip#anonymous"](args.body)
		end,
	},
	window = {
		-- completion = cmp.config.window.bordered(),
		-- documentation = cmp.config.window.bordered(),
	},
	mapping = cmp.mapping.preset.insert({
		['<C-b>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<C-Space>'] = cmp.mapping.complete(),
		['<C-e>'] = cmp.mapping.abort(),
		-- Accept currently selected item. Set `select` to `false` to only
		-- confirm explicitly selected items.
		['<CR>'] = cmp.mapping.confirm({ select = false }),
		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif vim.fn["vsnip#available"](1) == 1 then
				feedkey("<Plug>(vsnip-expand-or-jump)", "")
			elseif has_words_before() then
				cmp.complete()
			else
				-- The fallback function sends a already mapped key. In this
				-- case, it's probably `<Tab>`.
				fallback()
			end
		end, { "i", "s" }),
		["<S-Tab>"] = cmp.mapping(function()
			if cmp.visible() then
				cmp.select_prev_item()
			elseif vim.fn["vsnip#jumpable"](-1) == 1 then
				feedkey("<Plug>(vsnip-jump-prev)", "")
			end
		end, { "i", "s" }),
	}),
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'nvim_lsp_signature_help' },
	}, {
		{ name = 'treesitter' },
		{ name = 'vsnip' },
		{ name = 'path' }
	})
})
-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
	mapping = cmp.mapping.preset.cmdline(),
	sources = cmp.config.sources({
		{ name = 'path' }
	}, {
		{ name = 'cmdline' }
	})
})
cmp.setup.filetype("zsh", {
	sources = cmp.config.sources({
		{ name = 'zsh' },
	}, {
		{ name = 'vsnip' },
		{ name = 'path' }
	})
})
-- Set up lspconfig.
servers_list = {
	"texlab",
	"clangd",
	-- Installed via flake.nix
	"jedi_language_server",
	"gopls",
	"rls",
	"svls",
	"nil_ls",
	"cmake",
	-- TODO: Install (create a nix package) - https://github.com/sumneko/lua-language-server/wiki/Getting-Started
	--"sumneko_lua"
	-- TODO: Setup wolfram alpha language server: https://github.com/kenkangxgwe/lsp-wl
	-- All of the rest are installed via npm - on ZENIX with nixNodeJSPkgs
	"cssls",
	"eslint",
	"dockerls",
	"bashls",
	"vimls",
	"yamlls",
	}
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
local lsp = require("lspconfig")
for _,v in ipairs(servers_list) do
	lsp[v].setup{
		capabilities = capabilities,
		on_attach = function(client, bufnr)
			-- LSP Keybindings
			local bufopts = {
				noremap=true,
				silent=true,
				buffer=bufnr
			}
			vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
			vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
			vim.keymap.set('n', 'gs', vim.lsp.buf.signature_help, bufopts)
			vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, bufopts)
			vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
			vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, bufopts)
			vim.keymap.set('n', '<leader>f', vim.lsp.buf.formatting, bufopts)
			--vim.keymap.set('n', '<space>q', vim.diagnostic.open_float, opts)
			vim.keymap.set('n', '[q', vim.diagnostic.goto_prev, opts)
			vim.keymap.set('n', ']q', vim.diagnostic.goto_next, opts)
			vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)
		end
	}
end
EOF
" }}}

" {{{ ghost
let g:ghost_port = 4465
" }}}

" {{{ firenvim
let g:firenvim_config = {
	\ 'localSettings': {
		\ '.*': {
			\ 'selector': '',
			\ 'priority': 0,
			\ 'takeover': 'never',
		\ },
	\ }
\ }
if exists('g:started_by_firenvim')
	" set laststatus=0
	au BufEnter www.overleaf.com_* nnoremap <C-CR> <Esc>:w<CR>:call firenvim#eval_js('document.querySelector(".btn-recompile").click();')<CR>
	" au TextChanged * ++nested call firenvim_w#delaywrite()
	" au TextChangedI * ++nested call firenvim_w#delaywrite()
	" https://github.com/glacambre/firenvim#interacting-with-the-page
	nnoremap <Esc><Esc> :call firenvim#focus_page()<CR>
endif
" }}}

" {{{ AnsiEsc
" No reason why this script is living in this plugin
let g:loaded_cecutil = 1
" }}}

" vim:foldmethod=marker:ft=vim
