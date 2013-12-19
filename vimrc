call pathogen#infect()
call pathogen#helptags()
"
" .vimrc File  
" Maintained by Bobir@Ismoilov.com
" " based on Jeffrey Way config
" jeffrey@jeffrey-way.com  
" http://net.tutsplus.com  
"  
"Forget compatibility with Vi. Who cares.  
set nocompatible  
"Enable filetypes  
filetype on
filetype plugin on  
filetype indent on  
syntax on  
set shortmess+=I "no need for greeting screen
"vim-instant-markdown parameters
let g:instant_markdown_slow = 1
" in your .vimrc. You can then manually trigger preview via the command :InstantMarkdownPreview. 
" This command is only available inside markdown juffers and when the autostart option is turned off.
" let g:instant_markdown_autostart = 0


"Write the old file out when switching between files.  
set autowrite  
"Display current cursor position in lower right corner.  
"display
set ruler  
"Want a different map leader than \  
let mapleader = ","  
"Ever notice a slight lag after typing the leader key + command? This lowers  
"the timeout.  
set timeoutlen=500  
"Switch between buffers without saving  
set hidden  
"Set the color scheme. Change this to your preference.  
"Here's 100 to choose from: http://www.vim.org/scripts/script.php?script_id=625  
" colorscheme borland  
" colorscheme twilight
colorscheme tango2
" colorscheme molokai
" colorscheme zendnb
" colorscheme satori
   " syntax enable
   " set background=dark
   " colorscheme solarized


"highlight cursor line
set cursorline
" hi CursorLine cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
" hi CursorLine cterm=NONE ctermbg=darkgrey ctermfg=white guibg=darkred guifg=white

" Default Colors for CursorLine
highlight  CursorLine ctermbg=darkgrey cterm=NONE ctermfg=white

" Change Color when entering Insert Mode
autocmd InsertEnter * highlight  CursorLine ctermbg=white ctermfg=black
"
" Revert Color to default when leaving Insert Mode
autocmd InsertLeave * highlight  CursorLine ctermbg=darkgrey ctermfg=white



"Set font type and size. Depends on the resolution. Larger screens, prefer h20  
" set guifont=Menlo:h20  
"Tab stuff  
set tabstop=2  
set shiftwidth=2  
set softtabstop=2  
set expandtab  
"Show command in bottom right portion of the screen  
set showcmd  
"Show lines numbers  
set number  
"Prefer relative line numbering?  
"set relativenumber"  
"Indent stuff  
set smartindent  
set autoindent  
"Always show the status line  
set laststatus=2  
"Prefer a slightly higher line height  
set linespace=3  
"Better line wrapping  
set wrap  
set textwidth=79  
set formatoptions=qrn1  
"Set incremental searching"  
set incsearch  
"Highlight searching  
set hlsearch  
" case insensitive search  
set ignorecase  
set smartcase  
"Hide MacVim toolbar by default  
"set go-=T  
"Hard-wrap paragraphs of text  
nnoremap <leader>q gqip  
"Enable code folding  
set foldenable  
"Hide mouse when typing  
set mousehide  
"Shortcut to fold tags with leader (usually \) + ft  
nnoremap <leader>ft Vatzf  


" folding shortcuts, 2013-07-18
" http://vim.wikia.com/wiki/Folding
" zc: fold, zo: unfold, za: toggle; also zC, zO, zA
" look also zr/zR and zm/zM

" there are also other fold methods
set foldmethod=syntax
" the following to disable auto folding on file open
set foldlevelstart=99


" Create dictionary for custom expansions  
"set dictionary+=/Users/jeff_way/.vim/dict.txt  
"Opens a vertical split and switches over (\v)  
nnoremap <leader>v <C-w>v<C-w>l  
"Opens a horizontal split and switches over (\s)
nnoremap <leader>s <C-w>s<C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
"Split windows below the current window.  
set splitbelow  
" session settings  
set sessionoptions=resize,winpos,winsize,buffers,tabpages,folds,curdir,help  
"Set up an HTML5 template for all new .html files  
"autocmd BufNewFile * silent! 0r $VIMHOME/templates/%:e.tpl  
"Load the current buffer in Firefox - Mac specific.  
"abbrev ff :! open -a firefox.app %:p<cr>  
"Map a change directory to the desktop - Mac specific  
"nmap <leader>d :cd ~/Desktop<cr>:e.<cr>  
"Shortcut for editing  vimrc file in a new tab  
nmap <leader>ev :tabedit $MYVIMRC<cr>  
"Change zen coding plugin expansion key to shift + e  
let g:user_zen_expandabbr_key = '<C-e>'  
"Faster shortcut for commenting. Requires T-Comment plugin  
map <leader>c <c-_><c-_>  
"Saves time; maps the spacebar to colon  
"nmap <space> :  
"Let's map space for toggling folds
nnoremap <space> za
vnoremap <space> zf
"Automatically change current directory to that of the file in the buffer  
autocmd BufEnter * cd %:p:h  
"Map code completion to , + tab  
imap <leader><tab> <C-x><C-o>  
" More useful command-line completion  
set wildmenu  
"Auto-completion menu  
set wildmode=list:longest  
"http://vim.wikia.com/wiki/Make_Vim_completion_popup_menu_work_just_like_in_an_IDE  
set completeopt=longest,menuone  
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"  
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :  
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'  
inoremap <expr> <M-,> pumvisible() ? '<C-n>' :  
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'  
"Map escape key to jk -- much faster and compared to jj, won't move in view
"mode 
inoremap jk <esc>  
"To move by rows, not by lines
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k
"Delete all buffers (via Derek Wyatt)  
nmap <silent> ,da :exec "1," . bufnr('$') . "bd"<cr>  
"Bubble single lines (kicks butt)  
"http://vimcasts.org/episodes/bubbling-text/  
nmap <C-Up> ddkP  
nmap <C-Down> ddp  
"Bubble multiple lines  
vmap <C-Up> xkP`[V`]  
vmap <C-Down> xp`[V`]  
" Source the vimrc file after saving it. This way, you don't have to reload Vim to see the changes.  
if has("autocmd")  
 augroup myvimrchooks  
  au!  
  autocmd bufwritepost .vimrc source ~/.vimrc  
 augroup END  
endif  

"------------------------"  
"NERDTREE PLUGIN SETTINGS  
"------------------------"  
"Shortcut for NERDTreeToggle  
nnoremap <leader>nt :NERDTreeToggle <CR>  
"Show hidden files in NerdTree  
let NERDTreeShowHidden=0  
"autopen NERDTree and focus cursor in new document  
">>>>uncomment this one >>>> autocmd VimEnter * NERDTree  
"autocmd VimEnter * wincmd p  
"Helpeful abbreviations  
iab lorem Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.  
iab llorem Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.  
"Spelling corrects. Just for example. Add yours below.  
iab teh the  
iab Teh The  
" Get to home dir easier  
" <leader>hm is easier to type than :cd ~  
nmap <leader>hm :cd ~/ <CR>  
" Alphabetically sort CSS properties in file with :SortCSS  
:command! SortCSS :g#\({\n\)\@<=#.,/}/sort  
" Shortcut to opening a virtual split to right of current pane  
" Makes more sense than opening to the left  
nmap <leader>bv :bel vsp  
" Saves file when Vim window loses focus  
au FocusLost * :wa  
" Backups  
set nobackup
set noswapfile
"set backupdir=~/.vim/tmp/backup// " backups  
"set directory=~/.vim/tmp/swap// " swap files  
"set backup " enable backup  
" No more stretching for navigating files  
"noremap h ;  
"noremap j h  
"noremap k gj  
"noremap l gk  
"noremap ; l  
set showmatch " show matching brackets  
" print empty <a> tag  
map! ;h <a href=""></a><ESC>5hi
"to move between open panels,
"http://stackoverflow.com/questions/2413005/switching-between-tabs-in-nerdtree/13398056#13398056
map <S-Right> :tabn<CR>
map <S-Left>  :tabp<CR>

"removing highlights after search; command is :noh > :nohlsearch

"before pasting big chunks of text, press F2, after pasting, again paste F2
"from http://nvie.com/posts/how-i-boosted-my-vim/
set pastetoggle=<F2>

set title

"tagbar config
let g:tagbar_usearrows = 1
nnoremap <leader>l :TagbarToggle<CR>
 
set statusline=%t       "tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file


"helper functions for Command+T
function! Git_Repo_Cdup() " Get the relative path to repo root
    "Ask git for the root of the git repo (as a relative '../../' path)
    let git_top = system('git rev-parse --show-cdup')
    let git_fail = 'fatal: Not a git repository'
    if strpart(git_top, 0, strlen(git_fail)) == git_fail
        " Above line says we are not in git repo. Ugly. Better version?
        return ''
    else
        " Return the cdup path to the root. If already in root,
        " path will be empty, so add './'
        return './' . git_top
    endif
endfunction

function! CD_Git_Root()
    execute 'cd '.Git_Repo_Cdup()
    let curdir = getcwd()
    echo 'CWD now set to: '.curdir
endfunction
nnoremap <LEADER>gr :call CD_Git_Root()<cr>


"ignore lists for CtrlP
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
" set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
"
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }



