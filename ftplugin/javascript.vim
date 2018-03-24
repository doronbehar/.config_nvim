setlocal foldmethod=syntax
setlocal conceallevel=1
setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2
setlocal expandtab
setlocal path+=node_modules
setlocal suffixesadd+=.js,.jsx

function! s:load_main_node_module(fname)
	let node_modules = "./node_modules/"
	let package_json_path = node_modules . a:fname . '/package.json'
	if filereadable(package_json_path)
		return node_modules . a:fname . "/" . json_decode(join(readfile(package_json_path))).main
	else
		return node_modules . a:fname
	endif
endfunction

setlocal includeexpr=s:load_main_node_module(v:fname)
