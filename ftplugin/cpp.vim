set tags+=cpp_tags
if has('cscope')
	if filereadable('cpp_cscope.out')
		silent cs add cpp_cscope.out
		set cscopetag
		set cscopetagorder=0
	endif
endif
