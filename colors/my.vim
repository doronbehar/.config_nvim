hi clear
set background=dark
if exists('syntax_on')
  syntax reset
endif
let g:colors_name = 'my'

hi Boolean			term=none				cterm=none				ctermfg=165					
hi Character		term=bold				cterm=bold				ctermfg=125					
hi Comment			term=bold				cterm=bold				ctermfg=50					
hi Conditional		term=bold				cterm=bold				ctermfg=220					
hi Constant			term=bold				cterm=bold				ctermfg=163					
"hi Cursor
hi CursorColumn		term=underline			cterm=underline										
hi CursorLine		term=underline			cterm=underline										
hi Debug			term=bold				cterm=bold				ctermfg=53					
hi Define			term=none				cterm=none				ctermfg=197					
hi Delimiter		term=bold				cterm=bold				ctermfg=89					
hi DiffAdd			term=none				cterm=none							ctermbg=21		
hi DiffChange		term=none				cterm=none							ctermbg=23		
hi DiffDelete		term=none				cterm=none							ctermbg=124		
hi DiffText			term=none				cterm=none							ctermbg=235		
hi Directory		term=bold				cterm=bold				ctermfg=215					
hi ErrorMsg			term=bold				cterm=bold				ctermfg=250	ctermbg=9		
hi Error			term=none				cterm=none				ctermfg=36	ctermbg=0		
hi Exception		term=bold				cterm=bold				ctermfg=208					
hi Float			term=none				cterm=none				ctermfg=53					
hi FoldColumn														ctermfg=244	ctermbg=none	
hi Folded															ctermfg=244	ctermbg=none	
hi Function			term=none				cterm=none				ctermfg=130					
hi Identifier		term=none				cterm=none				ctermfg=215					
hi Ignore															ctermfg=0	ctermbg=0		
hi Include			term=none				cterm=none				ctermfg=200					
hi IncSearch		term=underline,reverse	cterm=underline,reverse								
hi Keyword			term=bold				cterm=bold				ctermfg=202					
hi Label			term=bold				cterm=bold				ctermfg=226					
hi LineNr			term=bold				cterm=bold				ctermfg=36					
hi Macro															ctermfg=196					
hi MatchParen														ctermfg=12					
"hi Menu
hi ModeMsg			term=bold				cterm=bold											
hi MoreMsg			term=bold				cterm=bold				ctermfg=22					
hi NonText			term=bold				cterm=bold				ctermfg=52					
"hi Normal
hi Number			term=bold				cterm=bold				ctermfg=163					
hi Operator			term=none				cterm=none				ctermfg=214					
hi PreCondit														ctermfg=199					
hi PreProc															ctermfg=90					
hi Question			term=bold				cterm=bold				ctermfg=22					
hi Repeat			term=bold				cterm=bold				ctermfg=190					
"hi Scrollbar
hi Search			term=reverse			cterm=reverse										
hi SpecialChar		term=bold				cterm=bold				ctermfg=88					
hi SpecialComment	term=bold				cterm=bold				ctermfg=52					
hi SpecialKey		term=bold				cterm=bold				ctermfg=237					
hi Special			term=bold				cterm=bold				ctermfg=9					
hi Statement		term=bold				cterm=bold				ctermfg=11					
hi StatusLineNC 	term=none				cterm=none				ctermfg=15 	ctermbg=12		
hi StatusLine		term=bold				cterm=bold				ctermfg=81	ctermbg=15		
hi StorageClass		term=bold				cterm=bold				ctermfg=184					
hi String			term=bold				cterm=bold				ctermfg=129					
hi Structure		term=bold				cterm=bold				ctermfg=186					
hi TabLineFill		term=bold				cterm=bold				ctermfg=81	ctermbg=15		
hi TabLineSel		term=none				cterm=none				ctermfg=15	ctermbg=81		
hi TabLine			term=bold				cterm=bold				ctermfg=81	ctermbg=123		
hi Tag				term=bold				cterm=bold				ctermfg=202					
hi Title			term=bold				cterm=bold				ctermfg=90					
hi Todo				term=standout			cterm=standout			ctermfg=0	ctermbg=36		
hi Typedef			term=bold				cterm=bold				ctermfg=188					
hi Type				term=bold				cterm=bold				ctermfg=119					
hi Underlined		term=bold,underline		cterm=bold,underline	ctermfg=81					
hi Visual			term=reverse			cterm=reverse										
hi WarningMsg		term=bold				cterm=bold				ctermfg=52					

" vim:ts=4
