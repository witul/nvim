call plug#begin('~/.local/share/nvim/plugged')

Plug 'sickill/vim-monokai'
"Plug 'tamelion/neovim-molokai'

Plug 'chriskempson/base16-vim'

Plug 'jamessan/vim-gnupg'
Plug 'shougo/denite.nvim'

Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

Plug 'nathanaelkane/vim-indent-guides'
Plug 'junegunn/vim-easy-align'

"https://github.com/cyansprite/Extract
Plug 'cyansprite/Extract'

"Plug 'vim-utils/vim-man'

Plug 'tpope/vim-markdown', {'for': 'markdown'}
Plug 'mattn/emmet-vim', {'for': ['html','css']}
Plug 'lepture/vim-css', {'for': 'css'}
Plug 'avakhov/vim-yaml', { 'for': 'yaml'}
Plug 'tpope/vim-surround', {'for': 'html'}
Plug 'noahfrederick/vim-composer', {'on':'Composer'}
Plug 'posva/vim-vue', { 'for' : 'vue'}
Plug 'pangloss/vim-javascript', { 'for' : 'javascript'}

Plug 'majutsushi/tagbar', { 'for': ['php','javascript']}

Plug 'cakebaker/scss-syntax.vim', {'for' : 'scss'}
Plug 'w0rp/ale'
Plug 'isRuslan/vim-es6', { 'for' : 'javascript'}
Plug 'othree/html5.vim', { 'for' : 'html'}
Plug 'Valloric/MatchTagAlways', {'for' : 'html'}
Plug 'hail2u/vim-css3-syntax', {'for': 'css'}
Plug 'stephenway/postcss.vim', {'for': 'css'}

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' }
"Plug 'Shougo/echodoc.vim'
Plug 'vifm/neovim-vifm'
Plug 'itchyny/lightline.vim'
Plug 'ktonga/vim-follow-my-lead'
Plug 'editorconfig/editorconfig-vim'
"Plug 'roxma/vim-tmux-clipboard'
" Pluginy do przetestowania

" gulp
"Plug 'dylanaraps/taskrunner.nvim'
"
" vmux zainstalowany osobno
"Plug 'jceb/vmux'

"Plug 'mhinz/vim-lookup'
"Plug 'andy-lang/tmux-omnivim'
"Plug 'chrisbra/NrrwRgn'

"Te sa jakies wieksze
"Plug 'mhinz/neovim-remote'
 
"Plug 'extr0py/oni'
"Plug 'taohex/navim'



if has("win16") || has("win32")
    Plug 'pprovost/vim-ps1'
endif

if has("unix")
    Plug 'sjl/gundo.vim'
endif    
call plug#end()



if filereadable(expand("~/.vimrc_background"))
"    "#let base16colorspace=256
  source ~/.vimrc_background
endif



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

"saving as sudo
cmap w!! w !sudo tee % > /dev/null
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7
set number
" Avoid garbled characters in Chinese language windows OS
let $LANG='en' 
set langmenu=en
"source $VIMRUNTIME/delmenu.vim
"source $VIMRUNTIME/menu.vim

set splitbelow
set splitright
" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
else
    set wildignore+=.git\*,.hg\*,.svn\*
endif

"Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch 

" Don't redraw while executing macros (good performance config)
set lazyredraw 

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch 
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Add a bit extra margin to the left
"set foldcolumn=1
set foldmethod=indent

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable 
"let base16colorspace=256
"let $NVIM_TUI_ENABLE_TRUE_COLOR=1 



if (has("termguicolors"))
  set termguicolors
endif
"let base16colorspace=256

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Short for save and back to insert mode
imap <Leader>w <esc>:w<cr>a
" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Close the current buffer
map <leader>bd :Bclose<cr>:tabclose<cr>gT

" Close all the buffers
map <leader>ba :bufdo bd<cr>

map <leader>l :bnext<cr>
map <leader>h :bprevious<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 
map <leader>t<leader> :tabnext 
"mapping tabs moving

map <C-S-]> gt
map <C-S-[> gT
map <C-1> 1gt
map <C-2> 2gt
map <C-3> 3gt
map <C-4> 4gt
map <C-5> 5gt
map <C-6> 6gt
map <C-7> 7gt
map <C-8> 8gt
map <C-9> 9gt
map <C-0> :tablast<CR>

" useful for matching brackets
noremap % v%
"easy edit vimrc
nmap <leader>ev :tabedit ~/.config/nvim/init.vim<cr>

"reload vimrc after save
"au BufWritePost .vimrc source %
" Let 'tl' toggle between this and the last accessed tab
let g:lasttab = 1
nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()

nmap <F8> :TagbarToggle<CR>
" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Specify the behavior when switching between buffers 
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2
set noshowmode

" Format the status line
set statusline=\ %{HasPaste()}%f%m%r%y\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap VIM 0 to first non-blank character
map 0 ^

" Move a line of text using ALT+[jk] or Command+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z
imap jj <esc>
if has("mac") || has("macunix")
  nmap <D-j> <M-j>
  nmap <D-k> <M-k>
  vmap <D-j> <M-j>
  vmap <D-k> <M-k>
endif

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.js :call DeleteTrailingWS()
autocmd BufWrite *.php :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()

" ESC for detach terminal
tnoremap <Esc> <C-\><C-n>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

" Unite
let g:denite_source_history_yank_enable = 1
nnoremap <leader>t :<C-u>Denite -no-split -buffer-name=files -vertical-preview  file_rec<cr>
nnoremap <leader>f :<C-u>Denite -no-split -buffer-name=files -vertical-preview  file<cr>
" nnoremap <leader>r :<C-u>Denite -no-split -buffer-name=mru     -start-insert file_mru<cr>
" nnoremap <leader>o :<C-u>Denite -no-split -buffer-name=outline -start-insert outline<cr>
" nnoremap <leader>y :<C-u>Denite -no-split -buffer-name=yank    history/yank<cr>
nnoremap <leader>e :<C-u>Denite -no-split -buffer-name=buffer -vertical-preview buffer<cr>

" call denite#filters#matcher_default#use(['matcher_fuzzy'])

        " Change mappings.
        call denite#custom#map(
              \ 'insert',
              \ '<C-j>',
              \ '<denite:move_to_next_line>',
              \ 'noremap'
              \)
        call denite#custom#map(
              \ 'insert',
              \ '<C-k>',
              \ '<denite:move_to_previous_line>',
              \ 'noremap'
              \)
        call denite#custom#map(
              \ 'insert',
              \ '<C-f>',
              \ '<denite:scroll_window_downwards>',
              \ 'noremap'
              \)
        call denite#custom#map(
              \ 'insert',
              \ '<C-b>',
              \ '<denite:scroll_window_upwards>',
              \ 'noremap'
              \)
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Quickly open a buffer for scribble
map <leader>q :e ~/buffer<cr>

" Quickly open a markdown buffer for scribble
map <leader>x :e ~/buffer.md<cr>

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>

function! VisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'gv'
        call CmdLine("Ag \"" . l:pattern . "\" " )
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction


" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
   let l:currentBufNum = bufnr("%")
   let l:alternateBufNum = bufnr("#")

   if buflisted(l:alternateBufNum)
     buffer #
   else
     bnext endif 
   if bufnr("%") == l:currentBufNum
     new
   endif

   if buflisted(l:currentBufNum)
     execute("bdelete! ".l:currentBufNum)
   endif
endfunction

"remapping emmet
"let g:user_emmet_install_global = 0
"autocmd FileType html,css EmmetInstall

au BufRead,BufNewFile *.scss set filetype=scss.css

let g:deoplete#enable_at_startup = 1

let g:deoplete#ignore_sources = get(g:, 'deoplete#ignore_sources', {})
let g:deoplete#ignore_sources.php = ['omni']

"vifm
let g:vifmUseCurrent=1

colorscheme base16-atelier-forest

"Follow my lead
let g:fml_all_sources=1
let g:lightline = {
		\ 'colorscheme': 'powerline',
		\ }

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

let g:ale_linters = {
\   'javascript': ['eslint'],
\   'scss': ['stylelint'],
\   'css': ['stylelint']
\}

let g:ale_fixers = {
\   'javascript': ['eslint'],
\   'scss': ['stylelint'],
\   'css': ['stylelint']
\}

let g:taskrunner#split = "30vnew"
let g:taskrunner#cmd = "gulp build:sass"
let g:airline#extensions#ale#enabled = 1
"let g:ale_fix_on_save = 1
