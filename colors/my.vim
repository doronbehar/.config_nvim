hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "my"
hi Normal																													guifg=white		guibg=black
hi Scrollbar																												guifg=darkcyan	guibg=cyan
hi Menu																														guifg=black		guibg=cyan
hi SpecialKey		term=bold			cterm=bold				ctermfg=237													guifg=#cc0000
hi NonText			term=bold			cterm=bold				ctermfg=darkred							gui=bold			guifg=#cc0000
hi Directory		term=bold			cterm=bold				ctermfg=brown												guifg=#cc8000
hi ErrorMsg			term=standout		cterm=bold				ctermfg=grey		ctermbg=red								guifg=White		guibg=Red
hi Search			term=none														ctermbg=82								guifg=white		guibg=Red
hi MoreMsg			term=bold			cterm=bold				ctermfg=darkgreen						gui=bold			guifg=SeaGreen
hi ModeMsg			term=bold			cterm=bold														gui=bold			guifg=White		guibg=Blue
hi LineNr			term=underline		cterm=bold				ctermfg=darkcyan											guifg=Yellow
hi Question			term=standout		cterm=bold				ctermfg=darkgreen						gui=bold			guifg=Green
hi StatusLine		term=bold,reverse	cterm=bold				ctermfg=lightblue	ctermbg=white		gui=bold			guifg=blue		guibg=white
hi StatusLineNC 	term=bold,reverse							ctermfg=white 		ctermbg=blue							guifg=white		guibg=blue
hi Title			term=bold			cterm=bold				ctermfg=darkmagenta						gui=bold			guifg=Magenta
hi Visual			term=reverse		cterm=reverse													gui=reverse
hi WarningMsg		term=standout		cterm=bold				ctermfg=darkred												guifg=Red
hi Cursor																													guifg=bg		guibg=Green
hi Comment			term=bold			cterm=bold				ctermfg=cyan												guifg=#80a0ff
hi Constant			term=underline		cterm=bold				ctermfg=magenta												guifg=#ffa0a0
hi Special			term=bold			cterm=bold				ctermfg=red													guifg=Orange
hi Identifier		term=underline								ctermfg=brown												guifg=#40ffff
hi Statement		term=bold			cterm=bold				ctermfg=yellow							gui=bold			guifg=#ffff60
hi PreProc			term=reverse								ctermfg=darkmagenta											guifg=#ff80ff
hi Type				term=underline		cterm=bold				ctermfg=lightgreen						gui=bold			guifg=#60ff60
hi Error			term=reverse								ctermfg=darkcyan	ctermbg=black							guifg=Red		guibg=Black
hi Todo				term=standout								ctermfg=black		ctermbg=darkcyan						guifg=Blue		guibg=Yellow
hi CursorLine		term=underline		cterm=underline																						guibg=#555555
hi CursorColumn		term=underline		cterm=underline																						guibg=#555555
hi MatchParen		term=reverse								ctermfg=blue																guibg=blue
hi TabLine			term=bold,reverse	cterm=bold				ctermfg=lightblue	ctermbg=123			gui=bold			guifg=blue		guibg=white
hi TabLineFill		term=bold,reverse	cterm=bold				ctermfg=lightblue	ctermbg=white		gui=bold			guifg=blue		guibg=white
hi TabLineSel		term=reverse								ctermfg=white		ctermbg=lightblue						guifg=white		guibg=blue
hi Underlined		term=underline		cterm=bold,underline	ctermfg=lightblue						gui=bold,underline	guifg=lightblue
hi Ignore														ctermfg=black		ctermbg=black							guifg=black		guibg=black
hi Folded																													guifg=gold		guibg=grey30
hi FoldColumn																												guifg=tan 		guibg=grey30
hi Folded														ctermfg=darkgrey	ctermbg=NONE
hi FoldColumn													ctermfg=darkgrey	ctermbg=NONE

hi DiffAdd								cterm=none									ctermbg=21
hi DiffDelete							cterm=none									ctermbg=124
hi DiffChange							cterm=none									ctermbg=23
hi DiffText								cterm=none									ctermbg=235
hi SignColumn							cterm=none				ctermfg=NONE		ctermbg=NONE
hi DiffAdd								cterm=bold				ctermfg=119			ctermbg=NONE
hi DiffDelete							cterm=bold				ctermfg=167			ctermbg=NONE
hi DiffChange							cterm=bold				ctermfg=227			ctermbg=NONE

hi IncSearch							cterm=underline,reverse
hi String			term=underline		cterm=bold				ctermfg=129
hi Character		term=underline		cterm=bold				ctermfg=125
hi Number			term=underline		cterm=bold				ctermfg=163
hi Boolean			term=underline		cterm=none				ctermfg=165
hi Float								cterm=none				ctermfg=53
hi Function			term=underline								ctermfg=130													guifg=#40ffff
hi Conditional		term=bold			cterm=bold				ctermfg=220								gui=bold			guifg=#ffff60
hi Repeat			term=bold			cterm=bold				ctermfg=190								gui=bold			guifg=#ffff60
hi Label			term=bold			cterm=bold				ctermfg=226								gui=bold			guifg=#ffff60
hi Operator			term=bold			cterm=none				ctermfg=214								gui=bold			guifg=#ffff60
hi Keyword			term=bold			cterm=bold				ctermfg=202								gui=bold			guifg=#ffff60
hi Exception		term=bold			cterm=bold				ctermfg=208								gui=bold			guifg=#ffff60
hi Include			term=reverse								ctermfg=200													guifg=#ff80ff
hi Define			term=reverse								ctermfg=197													guifg=#ff80ff
hi Macro			term=reverse								ctermfg=196													guifg=#ff80ff
hi PreCondit		term=reverse								ctermfg=199													guifg=#ff80ff
hi StorageClass		term=underline		cterm=bold				ctermfg=184								gui=bold			guifg=#60ff60
hi Structure		term=underline		cterm=bold				ctermfg=186								gui=bold			guifg=#60ff60
hi Typedef			term=underline		cterm=bold				ctermfg=188								gui=bold			guifg=#60ff60
hi Tag				term=bold			cterm=bold				ctermfg=202													guifg=Orange
hi SpecialChar		term=bold			cterm=bold				ctermfg=88													guifg=Orange
hi Delimiter		term=bold			cterm=bold				ctermfg=89													guifg=Orange
hi SpecialComment	term=bold			cterm=bold				ctermfg=52													guifg=Orange
hi Debug			term=bold			cterm=bold				ctermfg=53													guifg=Orange
"vim: ts=4
