syntax on
set number    
" set relativenumber 
set autoindent    
set tabstop=6    
set shiftwidth=6    
set smarttab    
set softtabstop=6    
set mouse=a    
set cursorline    
set cindent    
set background=dark    
set completeopt-=preview

call plug#begin()

Plug 'darrikonn/vim-gofmt', { 'do': ':GoUpdateBinaries' }
Plug 'bryanmylee/vim-colorscheme-icons'
Plug 'neoclide/coc-tabnine'
Plug 'tomtom/tcomment_vim'
Plug 'neoclide/coc-snippets'
Plug 'https://github.com/907th/vim-auto-save'
Plug 'hhatto/autopep8'
Plug 'tell-k/vim-autopep8'
Plug 'martington/oceanic-next'
Plug 'matze/vim-move'
Plug 'pangloss/vim-javascript'
Plug 'nsf/gocode'
Plug 'jnwhiteh/vim-golang'
Plug 'jupyter-vim/jupyter-vim'
Plug 'nvie/vim-flake8'
" Plug 'fatih/vim-go'
Plug 'neoclide/coc-css'
Plug 'rip-rip/clang_complete'
Plug 'junegunn/fzf'
Plug 'w0rp/ale'
Plug 'ervandew/supertab'
Plug 'tjdevries/coc-zsh'
Plug 'neoclide/coc-pairs'
Plug 'neoclide/coc-git'
Plug 'neoclide/coc-tsserver'
Plug 'neoclide/coc-yank'
Plug 'neoclide/coc-json'
Plug 'pappasam/coc-jedi'
Plug 'neoclide/coc-highlight'
Plug 'neoclide/coc-prettier'
Plug 'josa42/coc-sh'
Plug 'neoclide/coc-eslint'
Plug 'frazrepo/vim-rainbow'
Plug 'https://github.com/preservim/tagbar'
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-ruby/vim-ruby'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'https://github.com/neoclide/coc.nvim'
Plug 'pycqa/pep8'
Plug 'godlygeek/csapprox'
Plug 'junegunn/fzf'
Plug 'haishanh/night-owl.vim'
Plug 'lambdalisue/battery.vim'
Plug 'https://github.com/vim-airline/vim-airline-themes'
" Plug 'valloric/youcompleteme'
" Plug 'ycm-core/YouCompleteMe', { 'do': './install.py --tern-completer' }
" Plug 'https://github.com/ycm-core/YouCompleteMe'
set encoding=UTF-8
call plug#end()

if has('nvim')
  Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/denite.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif


:colorscheme night-owl
" :colorscheme iceberg
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
let g:airline_powerline_fonts = 1
let g:autopep8_disable_show_diff=1
let g:autopep8_diff_type='vertical'
let g:auto_save = 1
let g:auto_save_events = ["InsertLeave", "TextChanged"]
let g:auto_save_write_all_buffers = 1
let g:auto_save_silent = 0  " do not display the auto-save notification

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

if (has("termguicolors"))
 set termguicolors
endif

	" airline symbols
let g:airline_left_sep = ''  
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

au FileType c,cpp,objc,objcpp call rainbow#load()
let g:rainbow_active = 1
let g:rainbow_active = 1

let g:rainbow_load_separately = [
    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
    \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
    \ ]

noremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
 
 
" Find files using Telescope command-line sugar.
nnoremap <C-f> :Telescope find_files<cr>
nnoremap <C-g> :Telescope live_grep<cr>
nnoremap <C-e> :NERDTreeToggle<cr>
nmap <C-t> :TagbarToggle<cr>
nmap <C-/> :TCommentBlock<cr>
nmap <C-A> :TCommentBlock<cr>
nmap <C-p> :Autopep8<cr>
nmap <C-g> :GoFmt<cr>
autocmd FileType python map <buffer> <C-c> :call flake8#Flake8()<CR>

autocmd FileType scss setl iskeyword+=@-@


let g:airline_theme='oceanicnext' 
" let g:airline_theme='badwolf' 
let g:oceanic_next_terminal_bold = 1
let g:move_key_moidfier = 'C'
let g:oceanic_next_terminal_italic = 1
let g:go_fmt_command = "gofmt"
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" let g:lightline = { 'colorscheme': 'nightowl' }

autocmd FileType python noremap <buffer> <> :call Autopep8(C-p)<CR>
" hi Normal guibg=NONE ctermbg=NONE
" hi CursorLineNr ctermfg=45 cterm=bold


let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }


let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'jsformatter'
let g:move_key_modifier = 'C'
