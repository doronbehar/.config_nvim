hi clear
set background=dark
if exists('syntax_on')
  syntax reset
endif
let g:colors_name = 'my'

hi Boolean			term=none				cterm=none				ctermfg=165		ctermbg=none	gui=none				guifg=#d700ff	guibg=none
hi Character		term=bold				cterm=bold				ctermfg=125		ctermbg=none	gui=bold				guifg=#af005f	guibg=none
hi Comment			term=bold				cterm=bold				ctermfg=50		ctermbg=none	gui=bold				guifg=#00ffd7	guibg=none
hi Conditional		term=bold				cterm=bold				ctermfg=220		ctermbg=none	gui=bold				guifg=#ffd700	guibg=none
hi Constant			term=bold				cterm=bold				ctermfg=163		ctermbg=none	gui=bold				guifg=#d700af	guibg=none
"hi Cursor
hi CursorColumn		term=underline			cterm=underline			ctermfg=none	ctermbg=none	gui=underline			guifg=none		guibg=none
hi CursorLine		term=underline			cterm=underline			ctermfg=none	ctermbg=none	gui=underline			guifg=none		guibg=none
hi Debug			term=bold				cterm=bold				ctermfg=53		ctermbg=none	gui=bold				guifg=#5f005f	guibg=none
hi Define			term=none				cterm=none				ctermfg=197		ctermbg=none	gui=none				guifg=#ff005f	guibg=none
hi Delimiter		term=bold				cterm=bold				ctermfg=89		ctermbg=none	gui=bold				guifg=#87005f	guibg=none
hi DiffAdd			term=none				cterm=none				ctermfg=none	ctermbg=21		gui=none				guifg=none		guibg=#0000ff
hi DiffChange		term=none				cterm=none				ctermfg=none	ctermbg=23		gui=none				guifg=none		guibg=#005f5f
hi DiffDelete		term=none				cterm=none				ctermfg=none	ctermbg=124		gui=none				guifg=none		guibg=#af0000
hi DiffText			term=none				cterm=none				ctermfg=none	ctermbg=235		gui=none				guifg=none		guibg=#262626
hi Directory		term=bold				cterm=bold				ctermfg=215		ctermbg=none	gui=bold				guifg=#ffaf5f	guibg=none
hi ErrorMsg			term=bold				cterm=bold				ctermfg=250		ctermbg=9		gui=bold				guifg=#bcbcbc	guibg=none
hi Error			term=none				cterm=none				ctermfg=36		ctermbg=0		gui=none				guifg=#00af87	guibg=none
hi Exception		term=bold				cterm=bold				ctermfg=208		ctermbg=none	gui=bold				guifg=#ff8700	guibg=none
hi Float			term=none				cterm=none				ctermfg=53		ctermbg=none	gui=none				guifg=#5f005f	guibg=none
hi FoldColumn		term=none				cterm=none				ctermfg=244		ctermbg=none	gui=none				guifg=#808080	guibg=none
hi Folded			term=none				cterm=none				ctermfg=244		ctermbg=none	gui=none				guifg=#808080	guibg=none
hi Function			term=none				cterm=none				ctermfg=130		ctermbg=none	gui=none				guifg=#af5f00	guibg=none
hi Identifier		term=none				cterm=none				ctermfg=215		ctermbg=none	gui=none				guifg=#ffaf5f	guibg=none
hi Ignore			term=none				cterm=none				ctermfg=0		ctermbg=0		gui=none				guifg=#000000	guibg=none
hi Include			term=none				cterm=none				ctermfg=200		ctermbg=none	gui=none				guifg=#ff00d7	guibg=none
hi IncSearch		term=underline,reverse	cterm=underline,reverse	ctermfg=none	ctermbg=none	gui=underline,reverse	guifg=none		guibg=none
hi Keyword			term=bold				cterm=bold				ctermfg=202		ctermbg=none	gui=bold				guifg=#ff5f00	guibg=none
hi Label			term=bold				cterm=bold				ctermfg=226		ctermbg=none	gui=bold				guifg=#ffff00	guibg=none
hi LineNr			term=bold				cterm=bold				ctermfg=36		ctermbg=none	gui=bold				guifg=#00af87	guibg=none
hi Macro			term=none				cterm=none				ctermfg=196		ctermbg=none	gui=none				guifg=#ff0000	guibg=none
hi MatchParen		term=none				cterm=none				ctermfg=12		ctermbg=none	gui=none				guifg=#0000ff	guibg=none
"hi Menu
hi ModeMsg			term=bold				cterm=bold				ctermfg=none	ctermbg=none	gui=bold				guifg=none		guibg=none
hi MoreMsg			term=bold				cterm=bold				ctermfg=22		ctermbg=none	gui=bold				guifg=#005f00	guibg=none
hi NonText			term=bold				cterm=bold				ctermfg=52		ctermbg=none	gui=bold				guifg=#5f0000	guibg=none
"hi Normal
hi Number			term=bold				cterm=bold				ctermfg=163		ctermbg=none	gui=bold				guifg=#d700af	guibg=none
hi Operator			term=none				cterm=none				ctermfg=214		ctermbg=none	gui=none				guifg=#ffaf00	guibg=none
hi PreCondit		term=none				cterm=none				ctermfg=199		ctermbg=none	gui=none				guifg=#ff00af	guibg=none
hi PreProc			term=none				cterm=none				ctermfg=90		ctermbg=none	gui=none				guifg=#870087	guibg=none
hi Question			term=bold				cterm=bold				ctermfg=22		ctermbg=none	gui=bold				guifg=#005f00	guibg=none
hi Repeat			term=bold				cterm=bold				ctermfg=190		ctermbg=none	gui=bold				guifg=#d7ff00	guibg=none
"hi Scrollbar
hi Search			term=reverse			cterm=reverse			ctermfg=none	ctermbg=none	gui=reverse				guifg=none		guibg=reverse
hi SpecialChar		term=bold				cterm=bold				ctermfg=88		ctermbg=none	gui=bold				guifg=#870000	guibg=none
hi SpecialComment	term=bold				cterm=bold				ctermfg=52		ctermbg=none	gui=bold				guifg=#5f0000	guibg=none
hi SpecialKey		term=bold				cterm=bold				ctermfg=237		ctermbg=none	gui=bold				guifg=#3a3a3a	guibg=none
hi Special			term=bold				cterm=bold				ctermfg=9		ctermbg=none	gui=bold				guifg=#ff0000	guibg=none
hi Statement		term=bold				cterm=bold				ctermfg=11		ctermbg=none	gui=bold				guifg=#ffff00	guibg=none
hi StatusLineNC 	term=none				cterm=none				ctermfg=15 		ctermbg=12		gui=none				guifg=#ffffff	guibg=#0000ff
hi StatusLine		term=bold				cterm=bold				ctermfg=81		ctermbg=15		gui=bold				guifg=#5fd7ff	guibg=#ffffff
hi StorageClass		term=bold				cterm=bold				ctermfg=184		ctermbg=none	gui=bold				guifg=#d7d700	guibg=none
hi String			term=bold				cterm=bold				ctermfg=129		ctermbg=none	gui=bold				guifg=#af00ff	guibg=none
hi Structure		term=bold				cterm=bold				ctermfg=186		ctermbg=none	gui=bold				guifg=#d7d787	guibg=none
hi TabLineFill		term=bold				cterm=bold				ctermfg=81		ctermbg=15		gui=bold				guifg=#5fd7ff	guibg=#ffffff
hi TabLineSel		term=none				cterm=none				ctermfg=15		ctermbg=81		gui=none				guifg=#ffffff	guibg=#5fd7ff
hi TabLine			term=bold				cterm=bold				ctermfg=81		ctermbg=123		gui=bold				guifg=#5fd7ff	guibg=#87ffff
hi Tag				term=bold				cterm=bold				ctermfg=202		ctermbg=none	gui=bold				guifg=#ff5f00	guibg=none
hi Title			term=bold				cterm=bold				ctermfg=90		ctermbg=none	gui=bold				guifg=#870087	guibg=none
hi Todo				term=standout			cterm=standout			ctermfg=0		ctermbg=36		gui=standout			guifg=#000000	guibg=#00af87
hi Typedef			term=bold				cterm=bold				ctermfg=188		ctermbg=none	gui=bold				guifg=#d7d7d7	guibg=none
hi Type				term=bold				cterm=bold				ctermfg=119		ctermbg=none	gui=bold				guifg=#87ff5f	guibg=none
hi Underlined		term=bold,underline		cterm=bold,underline	ctermfg=81		ctermbg=none	gui=bold,underline		guifg=#5fd7ff	guibg=none
hi Visual			term=reverse			cterm=reverse			ctermfg=none	ctermbg=none	gui=reverse				guifg=none		guibg=none
hi WarningMsg		term=bold				cterm=bold				ctermfg=52		ctermbg=none	gui=bold				guifg=#5f0000	guibg=none

" vim:ts=4
