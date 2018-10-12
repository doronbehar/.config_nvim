function! pyenv#set()
	let l:envdir = system('pipenv --venv')
	if v:shell_error == 0
		let s:previous_ycm_python_binary_path = g:ycm_python_binary_path
		let s:previous_ale_python_pylint_executable = g:ale_python_pylint_executable
		let g:ycm_python_binary_path = l:envdir . '/usr/bin/python'
		let g:ale_python_pylint_executable = l:envdir . '/usr/bin/pylint'
	endif
endfunction

function! pyenv#unset()
	let g:ycm_python_binary_path = s:previous_ycm_python_binary_path
	let g:ale_python_pylint_executable = s:previous_ale_python_pylint_executable
	unlet s:previous_ycm_python_binary_path
	unlet s:previous_ale_python_pylint_executable
endfunction

function! pyenv#toggle()
	if ! exists(s:previous_ale_python_pylint_executable) && ! exists(s:previous_ycm_python_binary_path)
		call pyenv#set()
	else
		call pyenv#unset()
	endif
endfunction

