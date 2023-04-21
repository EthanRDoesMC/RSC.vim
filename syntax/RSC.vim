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

syn keyword	rscInstruction		LDAC STAC MVAC MOVR CLAC OUT JMP JMPZ

syn keyword	rscReturn		HALT

syn keyword	rscOperator		SUB ADD INC AND OR ASHR NOT

hi def link	rscComment		Comment
hi def link	rscLabel		Identifier
hi def link	rscHex			Number
hi def link	rscInstruction		Statement
hi def link	rscReturn		Exception
hi def link	rscOperator		Operator

let b:current_syntax = "rsc"
