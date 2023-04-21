" Vim syntax highlighting for RSC
" based on pythonRSC

if version < 600
	syntax clear
elseif exists("b:current_syntax")
	finish
endif

syn match	rscLabel		/\w\+:/he=e-1

syn match   	rscHex			/\$\?0x\x\+/

syn region 	rscComment		start=/;/ end=/$/

syn keyword	rscInstruction		HALT LDAC STAC MVAC MOVR JMP JMPZ OUT SUB ADD INC CLAC AND OR ASHR NOT

" i am not good at regex
syn match	rscLabel		/\$\(LDAC\|STAC\)\+\s\+\w\+/hs=s+5

hi def link	rscComment		Comment
hi def link	rscLabel		Label
hi def link	rscHex			Number
hi def link	rscInstruction		Statement

let b:current_syntax = "rsc"
