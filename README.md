Vim configuration
=================

2013-10-04
Using pathogen for plugin management.

~/.vimrc is also in this git repository, just for backup purposes.

Installing thru pathogen
------------------------

cd ~/.vim
git submodule add git://github.com/Raimondi/delimitMate.git bundle/delmitmate
git submodule init
or git submodule update --init
vim

Good starter .vimrc file:
http://net.tutsplus.com/articles/general/top-10-pitfalls-when-switching-to-vim/
Get the color themes: http://www.vim.org/scripts/script.php?script_id=625
Cheatsheet: http://www.worldtimzone.com/res/vi.html
https://github.com/tpope/vim-rails#readme
Good migration explanation (why vim):
http://stevelosh.com/blog/2010/09/coming-home-to-vim/
http://biodegradablegeek.com/2007/12/using-vim-as-a-complete-ruby-on-rails-ide/
Another plugin experience and customization:
http://news.ycombinator.com/item?id=1590713
Personal plugins and explanation (Pathogen, git):
http://mirnazim.org/writings/vim-plugins-i-use/
http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/
http://tammersaleh.com/posts/the-modern-vim-config-with-pathogen/
http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/
Some config tips: http://nvie.com/posts/how-i-boosted-my-vim/
Cheatsheets
http://media.smashingmagazine.com/wp-content/uploads/2010/05/VI-Help-Sheet-01-large2.jpg
http://www.digilife.be/quickreferences/QRC/vi%20Quick%20Reference.pdf
http://www2.cs.uidaho.edu/~rinker/ed03.pdf
http://www.terminally-incoherent.com/blog/wp-content/uploads/2009/03/vimcheatsheet.pdf
http://www.digilife.be/quickreferences/QRC/VIM%20Quick%20Reference%20Card.pdf
http://www.tuxfiles.org/linuxhelp/vimcheat.html
http://michael.peopleofhonoronly.com/vim/
http://overapi.com/static/cs/vim-brain.png MindMap
http://parker0phil.posterous.com/vim-cheat-sheet#!/
http://www.viemu.com/a_vi_vim_graphical_cheat_sheet_tutorial.html
http://www.fprintf.net/vimCheatSheet.html


Plugins

Autocomplete: Omnicomplete

Installed

Thru pathogen

Command-t
http://www.vim.org/scripts/script.php?script_id=3025
http://git.wincent.com/command-t.git/blob_plain/HEAD:/doc/command-t.txt

NERDTree
https://github.com/scrooloose/nerdtree

DelimitMate
git submodule add git://github.com/Raimondi/delimitMate.git bundle/delmitmate

TComment
https://github.com/tomtom/tcomment_vim

Solarized color scheme
http://ethanschoonover.com/solarized/vim-colors-solarized

Colors pack
http://www.vim.org/scripts/script.php?script_id=625
With some tweaking: color definitions should be in bundle/some_name/colors
folder.

Installing some fonts
sudo apt-get install ttf-dejavu ttf-liberation xfonts-terminus console-terminus
ttf-droid ttf-inconsolata

Tagbar: Awesome source code tag browsing
$ sudo aptitude install exuberant-ctags  # Required by Tagbar
$ cd ~/.vim
$ git submodule add git://github.com/majutsushi/tagbar.git bundle/tagbar
$ git submodule init && git submodule update


Fugitive
git submodule add git://github.com/tpope/vim-fugitive.git bundle/fugitive

Markdown
http://www.vim.org/scripts/script.php?script_id=2882
After extracting gz archive:
:e markdown.vba
:!mkdir ~/.vim/bundle/markdown
:UseVimball ~/.vim/bundle/markdown


=======================
For consideration

Gundo : Visualize your undo tree. www.vim.org/scripts/script.php?script_id=3304

https://github.com/kien/ctrlp.vim
http://kien.github.io/ctrlp.vim/#installation

Rails.vim http://ruby.about.com/b/2008/10/14/take-a-look-at-railsvim.htm
http://vim.wikia.com/wiki/Using_vim_as_an_IDE_all_in_one 10 Dec 2012

Ctags
http://codingfreak.blogspot.com/2009/12/ctags-vim-with-steroids.html
http://linux.byexamples.com/archives/177/vim-with-ctags/
http://amix.dk/blog/post/19329
http://stackoverflow.com/questions/563616/vim-and-ctags-tips-and-tricks
http://www.thegeekstuff.com/2009/04/ctags-taglist-vi-vim-editor-as-sourece-code-browser/

Auto Ctags update:
http://tbaggery.com/2011/08/08/effortless-ctags-with-git.html

also install taglist plugin

Vim shortcuts

:### :: go a line number ###, as ###G

Moving in “Insert” mode:
http://stackoverflow.com/questions/1737163/vim-traversing-text-in-insert-mode/1737259#1737259


From ~/.vimrc
<leader> is set to “,”
<leader>nt === NERDTreeToggle
(use instead C-ww) easier window navigation
to move around windows; defaults is C-w + h                                                                             
C-h          
C-j          
C-k          
C-l 
n insert mode pressing alt+h alt+j alt+k alt+l all take you to normal mode and
move in the expected direction. You can hold down alt when moving even while in
normal mode since the additional ESC that is sent does no harm. 

The advantage of using this scheme is that you can use the alt/meta+key
combination with any normal mode key, e.g.

Alt+o opens a new line below the one you are currently editing,
Alt+A appends to the end of the current line,
Alt+p pastes at the current insert location.
Alt+k moves up 
http://vim.wikia.com/wiki/Avoid_the_escape_key

ctrl-ww
This will move between open windows
You can change the tabs by ctrl-pgup and ctrl-pgdown
<space> === :
C+PgUp map <S-Right> :tabn<CR>
C+PgDwn map <S-Left>  :tabp<CR>

From NERDTree
use C-ww to move around (1 C-ww for NT, or C-w h/j/k/l)
t (or T) opens a file in a new tab (T keeps the focus on the current tab)
m opens menu
r reloads NT
to move around tabs: C+PgUp map <S-Right> :tabn<CR>
                                    C+PgDwn map <S-Left>  :tabp<CR>

Command-T
                                    <leader>t starts search
                                    <leader>b starts buffers
                                    C-j, C-k move up and down
                                    C-c cancels

                                    delimitMate :help delimitMate
                                    automatically closes parentheses and etc
                                    shift + tab to move outside of the pair

                                    TComment
                                    gc{motion}   :: Toggle comments (for small
                                    comments within one line 
                                                     the &filetype_inline style
                                                     will be used, if 
                                                                       defined) 
                                    gcc          :: Toggle comment for the
                                    current line 
                                    gcip          :: Toggle for (inner)
                                    paragraph
                                    gC{motion}   :: Comment region 
                                    gCc          :: Comment the current line 

                                    Omnicomplete
                                    C-p: list of words; selection is C-p and
                                    C-n

                                    From Vi & Vim book
                                    press J (shift+j) to join the two lines

                                    Folding shortcuts, 2013-07-18
                                    http://vim.wikia.com/wiki/Folding
                                    zc: fold, zo: unfold, za: toggle; also zC,
                                    zO, zA
                                    look also zr/zR and zm/zM

                                    Jumplists
                                    http://vim.wikia.com/wiki/Jumping_to_previously_visited_locations
                                    :jumps
                                    ctrl+O   <<< >>> ctrl+I (tab)
                                    Tagbar
                                    <leader>l (L) shows tagbar, functions, tags
                                    etc list


