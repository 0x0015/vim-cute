if !has('conceal')
    finish
endif

syntax clear cppOperator

syntax match cppOperator "<=" conceal cchar=≤
syntax match cppOperator ">=" conceal cchar=≥

syntax match cppOperator "=\@<!===\@!" conceal cchar=≡
syntax match cppOperator "!=" conceal cchar=≢

syntax match cppOperator "\<or\>" conceal cchar=∨
syntax match cppOperator "\<and\>" conceal cchar=∧
syntax match cppOperator "\<not\>" conceal cchar=¬

syntax match cppOperator ":" conceal cchar=∈
" :: needs to be below : .
syntax match cppOperator "::" conceal cchar=∷

syntax match cppOperator "\<pi\>" conceal cchar=π
syntax match cppOperator "\<\%(\%(std::\)\.\)\?sqrt\>" conceal cchar=√

syntax match cppOperator ">>" conceal cchar=»
syntax match cppOperator "<<" conceal cchar=«

syntax keyword cppOperator NULL conceal cchar=∅
syntax keyword cppOperator nullptr conceal cchar=∅
syntax keyword cppOperator nullopt conceal cchar=∅

syntax keyword cppOperator bool conceal cchar=𝔹
syntax keyword cppOperator int conceal cchar=ℤ
syntax keyword cppOperator float conceal cchar=ℝ
syntax match cppOperator "\<std::complex\>" conceal cchar=ℂ

syntax match cppOperator "\<length\>" conceal cchar=ₗ
syntax match cppOperator "\<size\>" conceal cchar=ₛ

syntax keyword cppOperator void conceal cchar=∅

syntax keyword cppOperator true conceal cchar=⊤
syntax keyword cppOperator false conceal cchar=⊥

syntax keyword cppOperator function conceal cchar=λ
syntax keyword cppOperator return conceal cchar=↵

hi link cppOperator Operator
hi! link Conceal Operator

setlocal conceallevel=1
