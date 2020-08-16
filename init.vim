call plug#begin('~/.vim/plugged')

Plug 'drewtempelmeyer/palenight.vim'

Plug 'https://github.com/kien/ctrlp.vim.git'

Plug 'https://github.com/vim-airline/vim-airline.git'

Plug 'tpope/vim-fugitive'

Plug 'https://github.com/scrooloose/nerdtree.git'

Plug 'https://github.com/vim-syntastic/syntastic.git'

Plug 'https://github.com/Valloric/YouCompleteMe.git'

Plug 'https://github.com/leafgarland/typescript-vim.git'

Plug 'marijnh/tern_for_vim'

Plug 'tomasr/molokai'

Plug 'vim-latex/vim-latex'

Plug 'tyru/open-browser.vim'
Plug 'https://github.com/kien/ctrlp.vim.git'

Plug 'https://github.com/vim-airline/vim-airline.git'

Plug 'tpope/vim-fugitive'

Plug 'https://github.com/scrooloose/nerdtree.git'

Plug 'https://github.com/vim-syntastic/syntastic.git'

Plug 'https://github.com/Valloric/YouCompleteMe.git'

Plug 'https://github.com/leafgarland/typescript-vim.git'

Plug 'marijnh/tern_for_vim'

Plug 'tomasr/molokai'

Plug 'vim-latex/vim-latex'

Plug 'tyru/open-browser.vim'


call plug#end()

"Palenight theme
set background=dark
colorscheme palenight

let g:lightline = { 'colorscheme': 'palenight' }
let g:airline_theme="palenight"

"True colors
if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif

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
