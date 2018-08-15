function! pyenv#set()
	let l:envdir = system('pipenv --venv')
	if v:shell_error == 0
		let g:ycm_python_binary_path=l:envdir . '/usr/bin/python'
		let g:ale_python_pylint_executable=l:envdir . '/usr/bin/pylint'
	endif
endfunction

function! pyenv#unset()
	unlet g:ycm_python_binary_path
	unlet g:ale_python_pylint_executable
endfunction

function! pyenv#toggle()
	if exists(g:ycm_python_binary_path) && exists(g:ale_python_pylint_executable)
		call pyenv#unset()
	else
		call pyenv#set()
	endif
endfunction

