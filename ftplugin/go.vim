set tags+=go_tags
if has('cscope')
	if filereadable('go_cscope.out')
		silent cs add go_cscope.out
		set cscopetag
		set cscopetagorder=0
	endif
endif
