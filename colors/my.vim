hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "my"

hi Boolean			term=none				cterm=none				ctermfg=165
hi Character		term=bold				cterm=bold				ctermfg=125
hi Comment			term=bold				cterm=bold				ctermfg=cyan
hi Conditional		term=bold				cterm=bold				ctermfg=220
hi Constant			term=bold				cterm=bold				ctermfg=magenta
"hi Cursor
hi CursorColumn		term=underline			cterm=underline
hi CursorLine		term=underline			cterm=underline
hi Debug			term=bold				cterm=bold				ctermfg=53
hi Define			term=none				cterm=none				ctermfg=197
hi Delimiter		term=bold				cterm=bold				ctermfg=89
hi DiffAdd			term=none				cterm=none									ctermbg=21
hi DiffChange		term=none				cterm=none									ctermbg=23
hi DiffDelete		term=none				cterm=none									ctermbg=124
hi DiffText			term=none				cterm=none									ctermbg=235
hi Directory		term=bold				cterm=bold				ctermfg=brown
hi ErrorMsg			term=bold				cterm=bold				ctermfg=grey		ctermbg=red
hi Error			term=none				cterm=none				ctermfg=darkcyan	ctermbg=black
hi Exception		term=bold				cterm=bold				ctermfg=208
hi Float			term=none				cterm=none				ctermfg=53
hi FoldColumn														ctermfg=darkgrey	ctermbg=none
hi Folded															ctermfg=darkgrey	ctermbg=none
hi Function			term=none				cterm=none				ctermfg=130
hi Identifier		term=none				cterm=none				ctermfg=brown
hi Ignore															ctermfg=black		ctermbg=black
hi Include			term=none				cterm=none				ctermfg=200
hi IncSearch		term=underline,reverse	cterm=underline,reverse
hi Keyword			term=bold				cterm=bold				ctermfg=202
hi Label			term=bold				cterm=bold				ctermfg=226
hi LineNr			term=bold				cterm=bold				ctermfg=darkcyan
hi Macro															ctermfg=196
hi MatchParen														ctermfg=blue
"hi Menu
hi ModeMsg			term=bold				cterm=bold
hi MoreMsg			term=bold				cterm=bold				ctermfg=darkgreen
hi NonText			term=bold				cterm=bold				ctermfg=darkred
"hi Normal
hi Number			term=bold				cterm=bold				ctermfg=163
hi Operator			term=none				cterm=none				ctermfg=214
hi PreCondit														ctermfg=199
hi PreProc															ctermfg=darkmagenta
hi Question			term=bold				cterm=bold				ctermfg=darkgreen
hi Repeat			term=bold				cterm=bold				ctermfg=190
"hi Scrollbar
hi Search			term=reverse			cterm=reverse
hi SpecialChar		term=bold				cterm=bold				ctermfg=88
hi SpecialComment	term=bold				cterm=bold				ctermfg=52
hi SpecialKey		term=bold				cterm=bold				ctermfg=237
hi Special			term=bold				cterm=bold				ctermfg=red
hi Statement		term=bold				cterm=bold				ctermfg=yellow
hi StatusLineNC 	term=none				cterm=none				ctermfg=white 		ctermbg=blue
hi StatusLine		term=bold				cterm=bold				ctermfg=lightblue	ctermbg=white
hi StorageClass		term=bold				cterm=bold				ctermfg=184
hi String			term=bold				cterm=bold				ctermfg=129
hi Structure		term=bold				cterm=bold				ctermfg=186
hi TabLineFill		term=bold				cterm=bold				ctermfg=lightblue	ctermbg=white
hi TabLineSel		term=none				cterm=none				ctermfg=white		ctermbg=lightblue
hi TabLine			term=bold				cterm=bold				ctermfg=lightblue	ctermbg=123
hi Tag				term=bold				cterm=bold				ctermfg=202
hi Title			term=bold				cterm=bold				ctermfg=darkmagenta
hi Todo				term=standout			cterm=standout			ctermfg=black		ctermbg=darkcyan
hi Typedef			term=bold				cterm=bold				ctermfg=188
hi Type				term=bold				cterm=bold				ctermfg=lightgreen
hi Underlined		term=bold,underline		cterm=bold,underline	ctermfg=lightblue
hi Visual			term=reverse			cterm=reverse
hi WarningMsg		term=bold				cterm=bold				ctermfg=darkred

" vim:ts=4
