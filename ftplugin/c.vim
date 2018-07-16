set tags+=c_tags
if has('cscope')
	if filereadable('c_cscope.out')
		silent cs add c_cscope.out
		set cscopetag
		set cscopetagorder=0
	endif
endif
