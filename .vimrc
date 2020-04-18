set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'https://github.com/kien/ctrlp.vim.git'

Plugin 'https://github.com/vim-airline/vim-airline.git'

Plugin 'tpope/vim-fugitive'

Plugin 'https://github.com/scrooloose/nerdtree.git'

Plugin 'https://github.com/vim-syntastic/syntastic.git'

Plugin 'https://github.com/Valloric/YouCompleteMe.git'

Plugin 'https://github.com/leafgarland/typescript-vim.git'

Plugin 'marijnh/tern_for_vim'

Plugin 'tomasr/molokai'

Plugin 'vim-latex/vim-latex'

Plugin 'tyru/open-browser.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"NerdTree shortcut
map <F2> :NERDTreeToggle<CR>

"Show hidden files in NerdTree
"let NERDTreeShowHidden=1
"
""autopen NERDTree and focus cursor in new document
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

""Choose colorscheme
let g:rehash256 = 1
colorscheme molokai

""Set line numbers
set number

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" For local replace
nnoremap gr gd[{V%::s/<C-R>///gc<left><left><left>

" For global replace
nnoremap gR gD:%s/<C-R>///gc<left><left><left>

" Smart search
" If it looks like URI, open an URI under cursor.
" Otherwise, search a word under cursor.
" My setting.
let g:netrw_nogx = 1 " disable netrw's gx mapping.
let g:openbrowser_default_search = 'duckduckgo'
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)

"Adding new search engines
let g:openbrowser_search_engines = {
            \'arx': 'https://arxiv.org/search/advanced?advanced=&terms-0-operator=AND&terms-0-term={query}&terms-0-field=all&classification-computer_science=y&classification-economics=y&classification-eess=y&classification-mathematics=y&classification-physics=y&classification-physics_archives=all&classification-q_biology=y&classification-q_finance=y&classification-statistics=y&classification-include_cross_list=include&date-filter_by=all_dates&date-year=&date-from_date=&date-to_date=&date-date_type=submitted_date&abstracts=show&size=50&order=-announced_date_first', 
            \'findit': 'https://findit.dtu.dk/en/catalog?q={query}'}
