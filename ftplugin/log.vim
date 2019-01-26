" detect coc.nvim CocInfo buffers and run AnsiEsc for better readability
if bufname('%') == '[coc info]' && exists(':AnsiEsc')
	execute('AnsiEsc!')
endif
