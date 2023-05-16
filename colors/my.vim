hi clear
set background=dark
if exists('syntax_on')
  syntax reset
endif
let g:colors_name = 'my'

hi Boolean			term=none				cterm=none				ctermfg=165		ctermbg=NONE	gui=none				guifg=#d700ff	guibg=NONE
hi Character		term=bold				cterm=bold				ctermfg=125		ctermbg=NONE	gui=bold				guifg=#af005f	guibg=NONE
hi Comment			term=bold				cterm=bold				ctermfg=50		ctermbg=NONE	gui=bold				guifg=#00ffd7	guibg=NONE
hi Conditional		term=bold				cterm=bold				ctermfg=220		ctermbg=NONE	gui=bold				guifg=#ffd700	guibg=NONE
hi Constant			term=bold				cterm=bold				ctermfg=163		ctermbg=NONE	gui=bold				guifg=#d700af	guibg=NONE
"hi Cursor
hi CursorColumn		term=underline			cterm=underline			ctermfg=NONE	ctermbg=NONE	gui=underline			guifg=NONE		guibg=NONE
hi CursorLine		term=underline			cterm=underline			ctermfg=NONE	ctermbg=NONE	gui=underline			guifg=NONE		guibg=NONE
hi Debug			term=bold				cterm=bold				ctermfg=53		ctermbg=NONE	gui=bold				guifg=#5f005f	guibg=NONE
hi Define			term=none				cterm=none				ctermfg=197		ctermbg=NONE	gui=none				guifg=#ff005f	guibg=NONE
hi Delimiter		term=bold				cterm=bold				ctermfg=89		ctermbg=NONE	gui=bold				guifg=#87005f	guibg=NONE
hi DiffAdd			term=none				cterm=none				ctermfg=NONE	ctermbg=21		gui=none				guifg=NONE		guibg=#0000ff
hi DiffChange		term=none				cterm=none				ctermfg=NONE	ctermbg=23		gui=none				guifg=NONE		guibg=#005f5f
hi DiffDelete		term=none				cterm=none				ctermfg=NONE	ctermbg=124		gui=none				guifg=NONE		guibg=#af0000
hi DiffText			term=none				cterm=none				ctermfg=NONE	ctermbg=235		gui=none				guifg=NONE		guibg=#262626
hi Directory		term=bold				cterm=bold				ctermfg=215		ctermbg=NONE	gui=bold				guifg=#ffaf5f	guibg=NONE
hi ErrorMsg			term=bold				cterm=bold				ctermfg=250		ctermbg=9		gui=bold				guifg=#bcbcbc	guibg=NONE
hi Error			term=none				cterm=none				ctermfg=36		ctermbg=0		gui=none				guifg=#00af87	guibg=NONE
hi Exception		term=bold				cterm=bold				ctermfg=208		ctermbg=NONE	gui=bold				guifg=#ff8700	guibg=NONE
hi Float			term=none				cterm=none				ctermfg=29		ctermbg=NONE	gui=none				guifg=#b273b2	guibg=NONE
hi FoldColumn		term=none				cterm=none				ctermfg=244		ctermbg=NONE	gui=none				guifg=#808080	guibg=NONE
hi Folded			term=none				cterm=none				ctermfg=244		ctermbg=NONE	gui=none				guifg=#808080	guibg=NONE
hi Function			term=none				cterm=none				ctermfg=130		ctermbg=NONE	gui=none				guifg=#af5f00	guibg=NONE
hi Identifier		term=none				cterm=none				ctermfg=215		ctermbg=NONE	gui=none				guifg=#ffaf5f	guibg=NONE
hi Ignore			term=none				cterm=none				ctermfg=0		ctermbg=0		gui=none				guifg=#000000	guibg=NONE
hi Include			term=none				cterm=none				ctermfg=200		ctermbg=NONE	gui=none				guifg=#ff00d7	guibg=NONE
hi IncSearch		term=underline,reverse	cterm=underline,reverse	ctermfg=NONE	ctermbg=NONE	gui=underline,reverse	guifg=NONE		guibg=NONE
hi Keyword			term=bold				cterm=bold				ctermfg=202		ctermbg=NONE	gui=bold				guifg=#ff5f00	guibg=NONE
hi Label			term=bold				cterm=bold				ctermfg=226		ctermbg=NONE	gui=bold				guifg=#ffff00	guibg=NONE
hi LineNr			term=bold				cterm=bold				ctermfg=36		ctermbg=NONE	gui=bold				guifg=#00af87	guibg=NONE
hi Macro			term=none				cterm=none				ctermfg=196		ctermbg=NONE	gui=none				guifg=#ff0000	guibg=NONE
hi MatchParen		term=none				cterm=none				ctermfg=12		ctermbg=NONE	gui=none				guifg=#0000ff	guibg=NONE
"hi Menu
hi ModeMsg			term=bold				cterm=bold				ctermfg=NONE	ctermbg=NONE	gui=bold				guifg=NONE		guibg=NONE
hi MoreMsg			term=bold				cterm=bold				ctermfg=22		ctermbg=NONE	gui=bold				guifg=#005f00	guibg=NONE
hi NonText			term=bold				cterm=bold				ctermfg=52		ctermbg=NONE	gui=bold				guifg=#5f0000	guibg=NONE
"hi Normal
hi Number			term=bold				cterm=bold				ctermfg=163		ctermbg=NONE	gui=bold				guifg=#d700af	guibg=NONE
hi Operator			term=none				cterm=none				ctermfg=214		ctermbg=NONE	gui=none				guifg=#ffaf00	guibg=NONE
hi PreCondit		term=none				cterm=none				ctermfg=199		ctermbg=NONE	gui=none				guifg=#ff00af	guibg=NONE
hi PreProc			term=none				cterm=none				ctermfg=90		ctermbg=NONE	gui=none				guifg=#870087	guibg=NONE
hi Question			term=bold				cterm=bold				ctermfg=22		ctermbg=NONE	gui=bold				guifg=#005f00	guibg=NONE
hi Repeat			term=bold				cterm=bold				ctermfg=190		ctermbg=NONE	gui=bold				guifg=#d7ff00	guibg=NONE
"hi Scrollbar
hi Search			term=reverse			cterm=reverse			ctermfg=NONE	ctermbg=NONE	gui=reverse				guifg=NONE		guibg=NONE
hi SpecialChar		term=bold				cterm=bold				ctermfg=88		ctermbg=NONE	gui=bold				guifg=#870000	guibg=NONE
hi SpecialComment	term=bold				cterm=bold				ctermfg=52		ctermbg=NONE	gui=bold				guifg=#5f0000	guibg=NONE
hi SpecialKey		term=bold				cterm=bold				ctermfg=237		ctermbg=NONE	gui=bold				guifg=#3a3a3a	guibg=NONE
hi Special			term=bold				cterm=bold				ctermfg=9		ctermbg=NONE	gui=bold				guifg=#ff0000	guibg=NONE
hi Statement		term=bold				cterm=bold				ctermfg=11		ctermbg=NONE	gui=bold				guifg=#ffff00	guibg=NONE
hi StatusLineNC 	term=none				cterm=none				ctermfg=15 		ctermbg=12		gui=none				guifg=#d7d7d7	guibg=#0000ff
hi StatusLine		term=bold				cterm=bold				ctermfg=81		ctermbg=15		gui=bold				guifg=#5fd7ff	guibg=#d7d7d7
hi StorageClass		term=bold				cterm=bold				ctermfg=184		ctermbg=NONE	gui=bold				guifg=#d7d700	guibg=NONE
hi String			term=bold				cterm=bold				ctermfg=129		ctermbg=NONE	gui=bold				guifg=#af00ff	guibg=NONE
hi Structure		term=bold				cterm=bold				ctermfg=186		ctermbg=NONE	gui=bold				guifg=#d7d787	guibg=NONE
hi TabLineFill		term=bold				cterm=bold				ctermfg=81		ctermbg=15		gui=bold				guifg=#5fd7ff	guibg=#d7d7d7
hi TabLineSel		term=none				cterm=none				ctermfg=15		ctermbg=81		gui=none				guifg=#d7d7d7	guibg=#5fd7ff
hi TabLine			term=bold				cterm=bold				ctermfg=81		ctermbg=123		gui=bold				guifg=#5fd7ff	guibg=#87ffff
hi Tag				term=bold				cterm=bold				ctermfg=202		ctermbg=NONE	gui=bold				guifg=#ff5f00	guibg=NONE
hi Title			term=bold				cterm=bold				ctermfg=90		ctermbg=NONE	gui=bold				guifg=#870087	guibg=NONE
hi Todo				term=standout			cterm=none				ctermfg=0		ctermbg=36		gui=none				guifg=#ff0000	guibg=#e6e6e6
hi Typedef			term=bold				cterm=bold				ctermfg=188		ctermbg=NONE	gui=bold				guifg=#d7d7d7	guibg=NONE
hi Type				term=bold				cterm=bold				ctermfg=119		ctermbg=NONE	gui=bold				guifg=#87ff5f	guibg=NONE
hi Underlined		term=bold,underline		cterm=bold,underline	ctermfg=81		ctermbg=NONE	gui=bold,underline		guifg=#5fd7ff	guibg=NONE
hi Visual			term=reverse			cterm=reverse			ctermfg=NONE	ctermbg=NONE	gui=reverse				guifg=NONE		guibg=NONE
hi WarningMsg		term=bold				cterm=bold				ctermfg=52		ctermbg=NONE	gui=bold				guifg=#5f0000	guibg=NONE

" vim:ts=4
