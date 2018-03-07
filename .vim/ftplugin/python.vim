"python << EOF
"import os
"import sys
"
"home = os.path.expanduser("~")
"path = home + "/.pyenv/versions/lawfully-3.6.2/lib/python3.6/site-packages"
"if not path in sys.path:
"		    sys.path.insert(0, path)
"EOF

set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=100
set expandtab
set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
set nocindent
set showmatch
set nu
set ruler
 
au FileType py set autoindent
au FileType py set smartindent
au FileType py set textwidth=79
 
let python_version_3 = 1 " python 2 문법을 따른다고 옵션을 설정합니다.
let python_highlight_all = 1 " 모든 강조(색상) 기능을 켭니다.
" autopep8
let g:autopep8_max_line_length=79
let g:autopep8_indent_size=4
let g:autopep8_disable_show_diff=1
