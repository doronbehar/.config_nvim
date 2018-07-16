setlocal foldmethod=syntax
setlocal conceallevel=1
setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2
setlocal expandtab
setlocal path+=node_modules
setlocal suffixesadd+=.js,.jsx

function! s:load_main_node_module(fname)
	let l:node_modules = './node_modules/'
	let l:package_json_path = l:node_modules . a:fname . '/package.json'
	if filereadable(l:package_json_path)
		return l:node_modules . a:fname . '/' . json_decode(join(readfile(l:package_json_path))).main
	else
		return l:node_modules . a:fname
	endif
endfunction

setlocal includeexpr=s:load_main_node_module(v:fname)
set tags+=javascript_tags
if has('cscope')
	if filereadable('javascript_cscope.out')
		silent cs add javascript_cscope.out
		set cscopetag
		set cscopetagorder=0
	endif
endif
