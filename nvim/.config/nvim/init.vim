"  _   _         __     ___           
" | \ | | ___  __\ \   / (_)_ __ ___  
" |  \| |/ _ \/ _ \ \ / /| | '_ ` _ \ 
" | |\  |  __/ (_) \ V / | | | | | | |
" |_| \_|\___|\___/ \_/  |_|_| |_| |_|
"
                                    
" Plugins
call plug#begin()
    " Activity Watch
    " Plug 'ActivityWatch/aw-watcher-vim'
    " Theme
    Plug 'gruvbox-community/gruvbox'

    " Nerdtree
    Plug 'scrooloose/nerdtree'
    " Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'ryanoasis/vim-devicons'
    Plug 'scrooloose/nerdcommenter'

    " Tmux
    Plug 'christoomey/vim-tmux-navigator'

    " IntelliSense emulation
    Plug 'dense-analysis/ale'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'junegunn/fzf.vim'

    " Other VSCode emulation
    Plug 'junegunn/fzf'
    Plug 'prabirshrestha/asyncomplete.vim'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'airblade/vim-gitgutter'

    " C#
    Plug 'OmniSharp/omnisharp-vim'


call plug#end()


let g:coc_global_extensions=[
    \ 'coc-pairs',
    \ 'coc-json',
    \ 'coc-omnisharp',
    \ ]
let g:OmniSharp_server_use_mono = 1
let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeShowHidden=1
let g:NerdTreeIgnore = ['^node_modules$']


"inoremap jk <ESC>
nmap <C-n> :NERDTreeToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nmap <F2> <Plug>(coc-rename)
xmap <leader>f <Plug>(coc-format-selected)
nmap <leader>f <Plug>(coc-format-selected)
nmap <leader>qf <Plug>(coc-fix-current)

autocmd CursorHold * silent call CocActionAsync('highlight')
" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>


colorscheme gruvbox
set exrc
set relativenumber
set nu
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set termguicolors
set scrolloff=8
set noshowmode
set guicursor=
set number
set colorcolumn=80

nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z


