call plug#begin('~/.vim/bundle')

Plug 'ErichDonGubler/vim-sublime-monokai'
Plug 'vim-airline/vim-airline'
Plug 'jpalardy/vim-slime' 
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'kien/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'luochen1990/rainbow'
Plug 'valloric/youcompleteme'

call plug#end()

"Encoding
scriptencoding utf-8
set encoding=utf-8

"Visual
set number relativenumber "relativenumber - нумерацию строк относительно положения курсора
syntax enable
set ruler
set cursorline "Подсвечивание курсора
set colorcolumn=120 "Подстветка ограничение по символам
set ttimeoutlen=10 "Понижаем задержку ввода escape последовательностей

"Theme
colorscheme sublimemonokai

"Tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set autoindent "Копирует отступы с текущей строки при добавлении новой

"More CLI
set t_Co=256
set vb
set t_ut=""

"Комбинация клавиш jj - действует как Escape в режиме Insert
inoremap jj <ESC>

"AIRLINE
let g:airline_powerline_fonts = 1 "Включить поддержку Powerline шрифтов
let g:airline#extensions#keymap#enabled = 0 "Не показывать текущий маппинг
let g:airline_section_z = "\ue0a1:%l/%L Col:%c" "Кастомная графа положения курсора
let g:Powerline_symbols='unicode' "Поддержка unicode

"Slime
let g:slime_target = "tmux"

"Rainbow
let g:rainbow_active = 1

"YouComplete
"let g:UltiSnipsExpandTrigger = '<C-y>'

"В нормальном режиме Ctrl+n вызывает :NERDTree
nmap <C-n> :NERDTreeToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggl

"Вид курсора
let &t_SI.="\e[5 q" "SI = режим вставки
let &t_SR.="\e[4 q" "SR = режим замены
let &t_EI.="\e[1 q" "EI = нормальный режим
