-- {{{ debug adaptor
local dap = require('dap')
-- https://github.com/rcarriga/nvim-dap-ui#usage
local dapui = require("dapui")
dapui.setup({
  -- Disable many mappings which I don't see the point with at the moment
  mappings = {
    edit = {},
    open = {},
    remove = {},
    repl = {},
    toggle = {},
  },
})
-- Open the dap-ui whenever dap is launching: https://github.com/rcarriga/nvim-dap-ui#usage
dap.listeners.after.event_initialized["dapui_config"] = function()
	dapui.open()
end
-- https://github.com/mfussenegger/nvim-dap-python#usage
require('dap-python').setup('python')
-- https://github.com/leoluz/nvim-dap-go#register-the-plugin
require('dap-go').setup()
-- https://github.com/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation#perl
dap.adapters.perl = {
	type = 'executable',
	-- TODO: Finish packaging this for NixOS, with upstream approved pname. See
	-- https://github.com/Nihilus118/vscode-perl-debug/issues/6
	command = "perl-debugger",
}
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
		},
	},
	perl = {
		{
			type = 'perl',
			request = 'launch',
			name = 'Launch Perl',
			program = '${workspaceFolder}/${relativeFile}',
		}
	}
}
vim.api.nvim_create_user_command("RunScriptWithArgs", function(t)
	-- :help nvim_create_user_command
	args = vim.fn.substitute(vim.fn.expand(t.args), "\n", " ", "g")
	approval = vim.fn.confirm(
		"Will try to run:\n    " ..
		vim.bo.filetype .. " " ..
		vim.fn.expand('%') .. " " ..
		args .. "\n\n" ..
		"Do you approve? ",
		"&Yes\n&No", 1
	)
	if approval == 1 then
		dap.run({
			type = vim.bo.filetype,
			request = 'launch',
			name = 'Launch file with custom arguments (adhoc)',
			program = '${file}',
			args = vim.split(args, ' ', { trimempty=true }),
		})
	end
end, {
	complete = 'file',
	nargs = '*'
})
vim.keymap.set('n', '<leader>R', ":RunScriptWithArgs ")
vim.keymap.set('n', '<leader>C', dapui.close, {desc = "DAP: Close UI"})
vim.keymap.set('n', '<leader>c', dap.continue, {desc = "DAP: Continue"})
vim.keymap.set('n', '<leader>o', dap.step_over, {desc = "DAP: Step Over"})
vim.keymap.set('n', '<leader>s', dap.step_into, {desc = "DAP: Step Into"})
vim.keymap.set('n', '<leader>u', dap.step_out, {desc = "DAP: Step Out"})
vim.keymap.set('n', '<leader>T', dap.terminate, {desc = "DAP: Terminate"})
vim.keymap.set('n', '<leader>b', dap.toggle_breakpoint, {desc = "DAP: Toggle Breakpoint"})
vim.keymap.set('n', '<leader>B', function()
	dap.set_breakpoint(vim.fn.input('Breakpoint condition: '))
end, {desc = "DAP: Breakpoint on condition"})
vim.keymap.set('n', '<leader>lp', function()
	dap.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))
end, {desc = "DAP: Log Point message"})
vim.keymap.set('n', '<leader>dr', dap.repl.toggle, {desc = "DAP.REPL: toggle"})
vim.keymap.set('n', '<leader>dl', dap.run_last, {desc = "DAP: Run Last"})
-- https://github.com/mfussenegger/nvim-dap-python#mappings
dap_python = require('dap-python')
vim.keymap.set('n', '<leader>dn', dap_python.test_method, {desc = "DAP_PYTHON: Test Method"})
vim.keymap.set('n', '<leader>df', dap_python.test_class, {desc = "DAP_PYTHON: Test Class"})
vim.keymap.set('v', '<leader>ds', dap_python.debug_selection, {desc = "DAP_PYTHON: Debug Selection"})
-- }}}

-- {{{ Helper for treesitter, and cmp
bufIsBig = function(bufnr)
	local max_filesize = 100 * 1024 -- 100 KB
	local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(bufnr))
	if ok and stats and stats.size > max_filesize then
		return true
	else
		return false
	end
end
-- }}}

-- {{{ LSP & completion
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
	preselect = cmp.PreselectMode.None,
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
	-- I don't add sources here, but I add them in a BufReadPre autocmd
})
-- If a file is too large, I don't want to add to it any cmp sources. See:
-- https://github.com/hrsh7th/nvim-cmp/issues/1522
vim.api.nvim_create_autocmd('BufReadPre', {
	callback = function(t)
		if not bufIsBig(t.buf) then
			cmp.setup.buffer {
				sources = cmp.config.sources({
					{ name = 'nvim_lsp' },
					{ name = 'nvim_lsp_signature_help' },
				}, {
					{ name = 'vsnip' },
					{ name = 'path' },
					{ name = 'treesitter' },
				})
			}
		end
	end
})

vim.api.nvim_create_autocmd('LspAttach', {
	callback = function(t)
		-- Detach clients if they are too big. See:
		-- https://github.com/neovim/nvim-lspconfig/issues/2626#issuecomment-1556057157
		if bufIsBig(t.buf) then
			for _,client in pairs(vim.lsp.get_active_clients({bufnr = t.buf})) do
				-- Using vim.defer_fn because when this event is fired, we are
				-- not really attached. See:
				-- https://www.reddit.com/r/neovim/comments/168u3e4/comment/jyyluyo/
				vim.defer_fn(function()
					vim.lsp.buf_detach_client(t.buf, client.id)
					print(
						"Detaching client " .. client.name .. " because buffer " ..
						vim.fn.bufname(t.buf) .. " is too big"
					)
				end, 10)
			end
		end
	end
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
	"matlab_ls",
	"gopls",
	"rls",
	"svls",
	"nixd", -- Too slow for large files like all-packages.nix
	--"rnix",
	"vhdl_ls",
	"cmake",
	-- See setup at https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#arduino_language_server
	"arduino_language_server",
	"autotools_ls",
	-- TODO: Install (create a nix package) - https://github.com/sumneko/lua-language-server/wiki/Getting-Started
	--"sumneko_lua"
	-- TODO: Setup wolfram alpha language server: https://github.com/kenkangxgwe/lsp-wl
	"cssls",
	"eslint",
	"dockerls",
	"bashls",
	"vimls",
	"yamlls",
}
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
local lsp = require("lspconfig")
default_setup_settings = {
	autostart = true,
	capabilities = capabilities,
	on_attach = function(client, bufnr)
		-- LSP Keybindings
		local bufopts = {
			noremap=true,
			silent=true,
			buffer=bufnr
		}
		vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts, {desc = "LSP: go to decleration"})
		vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts, {desc = "LSP: go to definition"})
		vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts, {desc = "LSP: go to implementation"})
		vim.keymap.set('n', 'gs', vim.lsp.buf.signature_help, bufopts, {desc = "LSP: signature help"})
		vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, bufopts, {desc = "LSP: go to type definition"})
		vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts, {desc = "LSP: show references"})
		vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, bufopts, {desc = "LSP: rename symbol"})
		vim.keymap.set('n', '<leader>f', vim.lsp.buf.format, bufopts, {desc = "LSP: format document"})
		--vim.keymap.set('n', '<space>q', vim.diagnostic.open_float, opts)
		vim.keymap.set('n', '[q', vim.diagnostic.goto_prev, bufopts, {desc = "LSP: go to next diagnostic"})
		vim.keymap.set('n', ']q', vim.diagnostic.goto_next, bufopts, {desc = "LSP: go to previous diagnostic"})
		vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, bufopts, {desc = "LSP: set location list with diagnostics"})
	end
}
for _,v in ipairs(servers_list) do
	lsp[v].setup(default_setup_settings)
end
perl_setup_settings = default_setup_settings
perl_setup_settings.cmd = {
	-- Such an executable exists only on Nix, in our perlnavigator package.
	"perlnavigator", "--stdio"
}
lsp.perlnavigator.setup(perl_setup_settings)
-- }}}

-- {{{ fzf-lua bindings
fzf = require('fzf-lua')
fzf.setup({
	buffers = {
		sort_lastused = false
	},
	actions = {
		files = {
			["default"] = fzf.actions.file_edit,
		} 
	}
})

-- Useful if you debug these functions
--function shellinspect(var)
--	vim.fn.system("echo var is " .. vim.fn.shellescape(vim.inspect(var)) .. " >> dbg")
--end
vim.keymap.set({ "n", "v", "i" }, "<C-x><C-f>",
	function()
		fzf.complete_path({ cmd = "find -maxdepth 2 -mindepth 1 -printf '%P\n'", previewer = "builtin" })
	end,
	{ silent = true, desc = "Fuzzy complete path" }
)
vim.keymap.set({ "n", "v", "i" }, "<C-x><C-l>",
	function()
		fzf.complete_line({
		fzf_opts = {
			['--query'] = vim.fn.shellescape(vim.fn.getbufline(
				vim.fn.bufnr('%'),
				vim.fn.line('.')
			)[1])
		}
	})
	end,
	{ silent = true, desc = "Fuzzy complete lines" })
-- }}}

-- {{{ treesitter
require'nvim-treesitter.configs'.setup {
	highlight = {
		enable = true,
		-- https://github.com/nvim-treesitter/nvim-treesitter/issues/1573#issuecomment-1780727057
		additional_vim_regex_highlighting = { "python" },
		disable = function(lang, buf)
			-- TODO: Fix issues with these file types... vimdoc issues are new
			if lang == "nix" or lang == "vimdoc" then
				return true
			end
			return bufIsBig(buf)
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
-- }}}

-- {{{ lualine
require('lualine').setup({
	options = {
		theme = "sonokai"
	},
	tabline = {
		lualine_a = {{
			'buffers',
			show_filename_only = false,
		}},
		lualine_b = {},
		lualine_c = {},
		lualine_x = {},
		lualine_y = {},
		lualine_z = {'tabs'}
	}
})
-- }}}

-- {{{ colorizer
colorizer = require('colorizer')
colorizer.setup({
	'css',
	'vim'
})
-- }}}

-- vim:foldmethod=marker
