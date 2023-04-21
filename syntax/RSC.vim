" Vim syntax highlighting for RSC
" based on pythonRSC

if version < 600
	syntax clear
elseif exists("b:current_syntax")
	finish
endif

syn match	rscLabel		/[-_$.A-Za-z0-9]\+\s*:/

" i am not good at regex
syn region	rscLabel		start=/\(LDAC\|STAC\|JMP\|JMPZ\)\+ / skip=/\(LDAC\|STAC\|JMP\|JMPZ\)\+ / end=/\w\*/

syn match   rscHex			/\$\^-\?0x\x\+/

syn region 	rscComment		start=/;/ end=/$/

syn keyword	rscInstruction	HALT LDAC STAC MVAC MOVR JMP JMPZ OUT SUB ADD INC CLAC AND OR ASHR NOT


hi def link	rscComment		Comment
hi def link rscHex			Number
hi def link rscInstruction	Statement
hi def link	rscLabel		Label

let b:current_syntax = "rsc"