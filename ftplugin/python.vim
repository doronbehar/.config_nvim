set tags+=python_tags
if has('cscope')
	if filereadable('python_cscope.out')
		silent cs add python_cscope.out
		set cscopetag
		set cscopetagorder=0
	endif
endif
