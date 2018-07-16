set tags+=ruby_tags
if has('cscope')
	if filereadable('ruby_cscope.out')
		silent cs add ruby_cscope.out
		set cscopetag
		set cscopetagorder=0
	endif
endif
