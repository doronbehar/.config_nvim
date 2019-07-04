let glob_list = glob("pack/*/opt/*", 1, 1)
let plugins_list = []
for link in glob_list
	let plugins_list += [split(link, '/')[-1]]
endfor
let prefix = 'let g:pathogen_disabled = '
let disabled_statement = prefix . string(plugins_list)
let file_contents = [
	\ '" This file was automatically created by update_submodules.sh and update_submodules.vim',
	\ disabled_statement
	\ ]
call writefile(file_contents, '.pathogen_disabled.vim')
