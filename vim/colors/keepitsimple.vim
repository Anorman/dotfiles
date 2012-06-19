" keepitsimple.vim
" Maintainer: Jared Norman <hi@jarednorman.ca>
" Last Change: 5 June 2012
" URL: http://blog.jarednorman.ca

set background=dark
hi clear
syntax reset
let g:colors_name="keepitsimple"

" groups
hi Normal ctermfg=7 cterm=none
hi Comment ctermfg=13 cterm=none
hi Constant ctermfg=4 cterm=none
hi Special ctermfg=0 cterm=none
hi Identifier ctermfg=4 cterm=none
hi Statement ctermfg=12 cterm=bold
hi PreProc ctermfg=0 cterm=none
hi Ignore ctermfg=0 cterm=none
hi Error ctermfg=1 cterm=none
hi Todo ctermfg=0 cterm=none
hi Menu ctermfg=0 cterm=none
hi Text ctermfg=8 cterm=none
hi Type ctermfg=4 cterm=none
hi LineNr ctermfg=0

hi NonText ctermfg=0

" splits
hi StatusLine ctermfg=5 cterm=reverse
hi StatusLineNC ctermfg=5 ctermbg=8 cterm=none
hi VertSplit ctermfg=8 ctermbg=8  cterm=none

" randoms
hi Underlined cterm=bold

" html
hi htmlTagN ctermfg=4
hi htmlBoldUnderline cterm=none
hi htmlBoldItalic cterm=none
hi htmlBold cterm=none
hi htmlBoldUnderlineItalic cterm=none
hi htmlUnderlineItalic cterm=none
hi htmlUnderline cterm=none

" css

" js
hi javaScriptValue ctermfg=14
hi javaScriptParens ctermfg=5

" tumblr
hi tumblrBlock ctermfg=11
hi tumblrTag ctermfg=11
