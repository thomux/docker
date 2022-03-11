" Syntax highlight on
syntax on

" Show line numbers
set number

" Don't create a swapfile
set noswapfile

" Highlight all search results
set hlsearch 
" Ignore case for searching
set ignorecase 
" Search while typing
set incsearch 

" Indent by file type
filetype plugin indent on

" Terminal default size
set termwinsize=10x0
" Show terminal below edit window
set splitbelow
" Support mouse for panel resize
set mouse=a

" Make Vim always render the sign column:
set signcolumn=yes

" Plugins

" AwesomeVimColorschemes
set background=dark
colorscheme meta5

" NERDTree
nnoremap <C-t> :NERDTreeToggle<CR>

" TagBar
nmap <F8> :TagbarToggle<CR>

" Ctrlsf
" (Ctrl+F) Open search prompt (Normal Mode)
nmap <C-F>f <Plug>CtrlSFPrompt 
" " (Ctrl-F + n) Open search prompt with current word (Normal Mode)
nmap <C-F>n <Plug>CtrlSFCwordPath
" " (Ctrl-F + t) Toggle CtrlSF window (Normal Mode)
nnoremap <C-F>t :CtrlSFToggle<CR>
" " (Ctrl-F + t) Toggle CtrlSF window (Insert Mode)
inoremap <C-F>t <Esc>:CtrlSFToggle<CR>

" Use the ack tool as the backend
let g:ctrlsf_backend = 'ack'
" Auto close the results panel when opening a file
let g:ctrlsf_auto_close = { "normal":0, "compact":0 }
" Immediately switch focus to the search window
let g:ctrlsf_auto_focus = { "at":"start" }
" Don't open the preview window automatically
let g:ctrlsf_auto_preview = 0
" Use the smart case sensitivity search scheme
let g:ctrlsf_case_sensitive = 'smart'
" Normal mode, not compact mode
let g:ctrlsf_default_view = 'normal'
" Use absoulte search by default
let g:ctrlsf_regex_pattern = 0
" Position of the search window
let g:ctrlsf_position = 'right'
" Width or height of search window
let g:ctrlsf_winsize = '46'
" Search from the current working directory
let g:ctrlsf_default_root = 'cwd'

" YoucCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.vim/pack/plugins/start/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
set completeopt-=preview
let g:ycm_autoclose_preview_window_after_insertion = 1

packadd termdebug

set tabstop=8
set shiftwidth=8
set noexpandtab
set list
set listchars=tab:>-,trail:!

set colorcolumn=80

autocmd FileType c setlocal shiftwidth=8 tabstop=8
