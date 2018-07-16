set tags+=java_tags
if has('cscope')
	if filereadable('java_cscope.out')
		silent cs add java_cscope.out
		set cscopetag
		set cscopetagorder=0
	endif
endif
