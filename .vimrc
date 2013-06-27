set foldmethod=marker
set background=dark
set backspace=2
set nocompatible

syntax on

set showmode
set showcmd
set showmatch
set ignorecase
set smartcase
set ruler
set incsearch
set ai
set laststatus=2
set number 
set pastetoggle=<F2>
set smartcase
set autoindent
set smartindent
set noerrorbells
set viminfo='100,f1


autocmd BufNewFile,BufReadPost mutt*,.followup set textwidth=79
set bs=2

"perl stuff
autocmd FileType perl set makeprg=perl\ -c\ %\ $*
autocmd FileType perl set errorformat=%f:%l:%m
autocmd FileType perl set autowrite
autocmd FileType perl set tabstop=4|set shiftwidth=4|set expandtab|set softtabstop=4
let perl_include_pod = 1
let perl_extended_vars = 1
nnoremap <silent> _t :%!perltidy -q<Enter>
vnoremap <silent> _t :!perltidy -q<Enter>
map ,pt <ESC>:%! perltidy<CR>
map ,ptv <ESC>:'<,'>! perltidy<CR>

"shell stuff
autocmd Filetype sh set autoindent|set smartindent
autocmd FileType sh set autowrite
autocmd FileType sh set tabstop=4|set shiftwidth=4|set expandtab|set softtabstop=4

"Pythoon stuff
autocmd Filetype python set autoindent|set smartindent
autocmd FileType python set autowrite
autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab|set softtabstop=4

"C stuff
autocmd Filetype c set autoindent|set smartindent
autocmd Filetype c set autowrite
autocmd FileType c set tabstop=4|set shiftwidth=4|set expandtab|set softtabstop=4

"cool stuff I robbed from reddit
".doc through antiword
autocmd BufReadPre *.doc silent set ro
autocmd BufReadPost *.doc silent %!antiword "%"

".rtf through unrtf
autocmd BufReadPre *.rtf silent set ro
autocmd BufReadPost *.rtf silent %!unrtf --txt
map <F5> <Esc> :perl use Text::FindIndent;VIM::DoCommand($_) for Text::FindIndent->to_vim_commands(join "\n", $curbuf->Get(1..$curbuf->Count()));<CR>
