:set background=dark
:highlight clear
if version > 580
 hi clear
 if exists("syntax_on")
 syntax reset
 endif
endif
let colors_name = "kee"
hi Normal guifg=green
hi Cursor guibg=khaki
hi CursorColumn guibg=#123456 guifg=#abcdef ctermfg=NONE ctermbg=112 cterm=bold
hi FoldColumn ctermfg=DarkBlue	   ctermbg=Grey     guibg=Grey	    guifg=DarkBlue
hi Folded     ctermbg=Grey	   ctermfg=DarkBlue guibg=LightGrey guifg=DarkBlue
hi CUrsorLine guibg=#123456 guifg=#abcdef ctermfg=NONE ctermbg=312 cterm=bold
hi Cursor	guifg=black guibg=yellow ctermfg=black ctermbg=yellow
hi lCursor	guifg=black guibg=white ctermfg=black ctermbg=blue
hi ErrorMsg guifg=yellow guibg=red ctermfg=yellow ctermbg=red
hi IncSearcg guifg=yellow guibg=red ctermfg=yellow ctermbg=red
hi Visual gui=bold guibg=darkgreen ctermbg=darkgreen cterm=bold
"操作符号
hi Operator guifg=014 ctermfg=014
"注释
hi Comment guifg=220 ctermfg=222
"常量
hi Constant gui=bold guifg=red ctermfg=red cterm=bold
"常用关键字标示符
hi statement gui=bold guifg=112 ctermfg=112 cterm=bold
hi goType gui=bold guifg=112 ctermfg=112 cterm=bold
"预处理符号
hi PrePoc gui=bold guifg=darkred ctermfg=darkred cterm=bold
"数据类型
hi Type gui=bold guifg=blue ctermfg=blue cterm=bold
"字符串常量
hi String guifg=green ctermfg=green
"单个字符常量
hi Character guifg=blue ctermfg=blue
"数字常量: 234, 0xff
hi Number guifg=red ctermfg=red
"布尔常量: TRUE, false
hi Boolean guifg=125 ctermfg=125 gui=bold cterm=bold
"函数名
hi Function gui=bold guifg=blue ctermfg=blue cterm=bold
hi keyword gui=bold guifg=blue ctermfg=blue cterm=bold
"条件关键字: if, then, else, endif, switch, etc.
hi Conditional gui=bold guifg=302 ctermfg=302 cterm=bold
 "循环关键字: for, do, while, etc.
hi Repeat  gui=bold guifg=302 ctermfg=302 cterm=bold
 "异常关键字: try, catch, throw
hi Exception gui=bold guifg=302 ctermfg=302 cterm=bold

:hi Identifier	ctermfg=cyan guifg=#40ffff cterm=none
hi SpecialKey		guifg=yellow			ctermfg=yellow
hi Directory		guifg=cyan			ctermfg=cyan
hi Title			guifg=magenta gui=none ctermfg=magenta cterm=bold
hi WarningMsg		guifg=red			ctermfg=red
hi WildMenu			guifg=yellow guibg=black ctermfg=yellow ctermbg=black cterm=none term=none
hi ModeMsg			guifg=#22cce2		ctermfg=lightblue
hi MoreMsg			ctermfg=darkgreen	ctermfg=darkgreen
hi Question			guifg=green gui=none ctermfg=green cterm=none
hi NonText			guifg=#0030ff		ctermfg=darkblue

hi StatusLine	guifg=blue guibg=darkgray gui=none		ctermfg=blue ctermbg=gray term=none cterm=none
hi StatusLineNC	guifg=black guibg=darkgray gui=none		ctermfg=black ctermbg=gray term=none cterm=none
hi VertSplit	guifg=black guibg=darkgray gui=none		ctermfg=black ctermbg=gray term=none cterm=none
hi Special	ctermfg=red guifg=red cterm=bold gui=bold
hi Underlined	cterm=underline term=underline
hi LineNr	guifg=#90f020			ctermfg=green cterm=none
hi DiffAdd	guibg=darkred	ctermbg=darkred term=none cterm=none
hi DiffChange	guibg=darkmagenta ctermbg=magenta cterm=none
hi DiffDelete	ctermfg=yellow ctermbg=cyan gui=bold guifg=red guibg=DarkCyan
hi DiffText	cterm=bold ctermbg=red gui=bold guibg=Red
hi MatchParen ctermfg=red ctermbg=yellow cterm=bold

hi PmenuSel guifg=#c0c0c0 guibg=#2050d0     ctermfg=green ctermbg=darkyellow cterm=bold
hi PmenuSbar guifg=blue guibg=darkgray    ctermfg=red ctermbg=darkgreen cterm=bold
hi PmenuThumb guifg=#c0c0c0    ctermfg=red ctermbg=darkgreen cterm=bold
