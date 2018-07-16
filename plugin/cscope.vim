if has('cscope')
	" add any database in current directory
	if filereadable('cscope.out')
		silent cs add cscope.out
		set cscopetag
		set cscopetagorder=0
	" else add database pointed to by environment
	elseif $CSCOPE_DB !=# ''
		silent cs add $CSCOPE_DB
		set cscopetag
		set cscopetagorder=0
	endif
	set cscopequickfix=s-,c-,d-,i-,t-,e-,a-
endif
