#####Contents
  * [Vim configuration](#vim-configuration)
  * [For regular install of module with Pathogen](#for-regular-install-of-a-module-with-pathogen)
  * [Vim](#vim)
  * [Replicationg on a new machine](#replicating-on-a-new-machine)
  * [Why Vim, tips and tricks](#why-vim-tips-and-tricks)
  * [Cheatsheets](#cheatsheets)
  * [Plugins](#plugins)
    * [Installed](#installed)
    * [For consideration](#for-consideration)
  * [Vim shortcuts](#vim-shortcuts)
  * [XMonad](#xmonad)
  * [Gogland shortcuts](#gogland-shortcuts)
  
------------------

Using http://ohmyz.sh/ (2017-11-27)  
Installation: https://www.youtube.com/watch?v=ADytC9a2g2Y  
Configuring themes and fonts: https://www.youtube.com/watch?v=XSeO6nnlWHw

Vim configuration
=================

2013-10-04  
Using pathogen for plugin management.

~/.vimrc is also in this git repository. For
conveniece, I'll use dotfile directory, or some approximation to that
technique:

* move config (dot) files in a folder;
* create soft links in original destinations;
* git push dotfile folder for syncronization and backup to some repo.

So, `ln -s ~/.vim/vimrc ~/.vimrc`

I'll try to install everything through Tim Pope's [Pathogen](https://github.com/tpope/vim-pathogen).

####For regular install of a module with Pathogen:

    cd ~/.vim
    git submodule add git://github.com/Raimondi/delimitMate.git bundle/delmitmate
    git submodule init && git submodule update
or `git submodule update --init`  

####vim

For installing Vimballs (from pathogen github page):

    :e plugin.vba
    :!mkdir ~/.vim/bundle/plugin
    :UseVimball ~/.vim/bundle/plugin

###Replicating on a new machine

    $ cd ~
    $ rm .vimrc
    $ rm .vim -rf
    $ git clone git://github.com/bismailov/vim_pathogen.git .vim
    $ ln -s .vim/vimrc .vimrc
    $ cd .vim
    $ git submodule init

In case of error fatal: no submodule mapping found in .gitmodules for path 'bundle/xxxx' do
    
    $ git rm --cached 'bundle/xxxx' 
    
    $ git submodule update
    

###Why Vim, tips and tricks

Good starter .vimrc file: http://net.tutsplus.com/articles/general/top-10-pitfalls-when-switching-to-vim/  
Get the color themes: http://www.vim.org/scripts/script.php?script_id=625  
Cheatsheet: http://www.worldtimzone.com/res/vi.html  
https://github.com/tpope/vim-rails#readme  
Good migration explanation (why vim): http://stevelosh.com/blog/2010/09/coming-home-to-vim/  
http://biodegradablegeek.com/2007/12/using-vim-as-a-complete-ruby-on-rails-ide/  
Another plugin experience and customization: http://news.ycombinator.com/item?id=1590713  
Personal plugins and explanation (Pathogen, git):  
http://mirnazim.org/writings/vim-plugins-i-use/  
http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/  
http://tammersaleh.com/posts/the-modern-vim-config-with-pathogen/  
http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/  
Some config tips: http://nvie.com/posts/how-i-boosted-my-vim/  
Nice post: http://statico.github.io/vim.html http://statico.github.io/vim2.html  
More advanced:
http://stackoverflow.com/questions/1218390/what-is-your-most-productive-shortcut-with-vim  

###Cheatsheets

http://media.smashingmagazine.com/wp-content/uploads/2010/05/VI-Help-Sheet-01-large2.jpg  
http://www.digilife.be/quickreferences/QRC/vi%20Quick%20Reference.pdf  
http://www2.cs.uidaho.edu/~rinker/ed03.pdf  
http://www.terminally-incoherent.com/blog/wp-content/uploads/2009/03/vimcheatsheet.pdf  
http://www.digilife.be/quickreferences/QRC/VIM%20Quick%20Reference%20Card.pdf  
http://www.tuxfiles.org/linuxhelp/vimcheat.html  
http://michael.peopleofhonoronly.com/vim/  
Mind map http://overapi.com/static/cs/vim-brain.png  
http://parker0phil.posterous.com/vim-cheat-sheet#!/  
http://www.viemu.com/a_vi_vim_graphical_cheat_sheet_tutorial.html  
http://www.fprintf.net/vimCheatSheet.html  
http://stackoverflow.com/questions/1218390/what-is-your-most-productive-shortcut-with-vim  
Nice one: http://tnerual.eriogerg.free.fr/vimqrc.html

###Plugins

####Installed

#####Command-t  
http://www.vim.org/scripts/script.php?script_id=3025  
http://git.wincent.com/command-t.git/blob_plain/HEAD:/doc/command-t.txt

Make sure that ruby in vim build is the same with system vim. While in command
line, 'rvm use system', if the system ruby is the same one used in vim build.

`<leader>gr` sets current folder to the Git root  
`<leader>t` starts search  
`<leader>b` starts buffers  
C-j, C-k move up and down  
C-c cancels

#####NERDTree  
https://github.com/scrooloose/nerdtree

Press ? for help
use C-ww to move around (1 C-ww for NT, or C-w h/j/k/l)  
t (or T) opens a file in a new tab (T keeps the focus on the current tab)  
m opens menu
r reloads NT  

`<leader>nt`: NERDTreeToggle  

#####DelimitMate  
git submodule add git://github.com/Raimondi/delimitMate.git bundle/delmitmate

`:help delimitMate`  
automatically closes parentheses and etc  
`shift + tab` to move outside of the pair

#####TComment  
https://github.com/tomtom/tcomment_vim

gc{motion}: Toggle comments (for small comments within one line the &filetype_inline style will be used, if defined)  
gcc: Toggle comment for the current line 
gcip: Toggle for (inner) paragraph
gC{motion}: Comment region 
gCc: Comment the current line 

#####Solarized color scheme  
http://ethanschoonover.com/solarized/vim-colors-solarized

#####Vividchalk color scheme  
https://github.com/tpope/vim-vividchalk.git

#####Colors pack  
http://www.vim.org/scripts/script.php?script_id=625  
*With some tweaking: color definitions should be in bundle/some_name/colors folder.*

#####Installing some fonts   

    sudo apt-get install ttf-dejavu ttf-liberation xfonts-terminus console-terminus ttf-droid ttf-inconsolata

#####Tagbar: Awesome source code tag browsing  

    sudo aptitude install exuberant-ctags  # Required by Tagbar
    cd ~/.vim
    git submodule add git://github.com/majutsushi/tagbar.git bundle/tagbar
    git submodule init && git submodule update

`<leader>l` (L) shows tagbar, functions, tags  
To generate tags file, run `ctags -R` in project's root folder.   
`<c-]>` to jump for tag definition  
`<c-o>` to jump back


#####Fugitive  
    git submodule add git://github.com/tpope/vim-fugitive.git bundle/fugitive

#####Markdown  
http://www.vim.org/scripts/script.php?script_id=2882  
After extracting gz archive:  

    :e markdown.vba
    :!mkdir ~/.vim/bundle/markdown
    :UseVimball ~/.vim/bundle/markdown

For Markdown realtime preview: https://github.com/suan/vim-instant-markdown

#####Vim-unimpaired  
https://github.com/tpope/vim-unimpaired

`]<space>` add empty line  
`[<space>`  
`]b` change buffers  
`[b`  
`[e` move line  
`]e`

#####CtrlP    
Search files and folders  
Analogous to Command-T, more convenient because will search from project root.  

 - Use `<c-p>` to search files
 - Use `<c-j>`, `<c-k>` or the arrow keys to navigate the result list.
 - Use `<c-t>` or `<c-v>`, `<c-x>` to open the selected entry in a new tab or in a new split.
 - Use `<c-n>`, `<c-p>` to select the next/previous string in the prompt's history.
 - Use `<c-y>` to create a new file and its parent directories.


#####Omnicomplete  
Not active; CtrlP instead.  
C-p: list of words; selection is C-p and C-n (might not work in Guake/Yakuake, new tab command)


#####indentLine

This plugin puts vertical lines for indentation separation

https://github.com/Yggdroot/indentLine.git

#####Fugitive
Git addon  
- `:Gread` -- :Git checkout % (% is a current open file in vim)  
- `:Gwrite` -- :Git add %  
- `:Gremove` -- :Git rm %  
- `:Gmove target_path`, if you supply "/", it is relative to git repository. 
- `:Gcommit`  
- `:Gblame`  

#####Rails.vim

There are two plugins -- Rails.vim and Bundle.vim by Tim Pope. Also, added
dbext plugin, which enables for running `:Select * from users` in Rails project
directory.

#####Surround plugin
https://github.com/tpope/vim-surround  
`ds"` to remove double quotes.

*Actually there are more, look at .vim/bundle directory.*

####For consideration

https://github.com/tmm1/ripper-tags

https://github.com/tpope/vim-bundler

https://github.com/tpope/vim-dispatch

Gundo: Visualize your undo tree. www.vim.org/scripts/script.php?script_id=3304

https://github.com/kien/ctrlp.vim  
http://kien.github.io/ctrlp.vim/#installation

Rails.vim http://ruby.about.com/b/2008/10/14/take-a-look-at-railsvim.htm  
http://vim.wikia.com/wiki/Using_vim_as_an_IDE_all_in_one 10 Dec 2012

#####Autocomplete: Omnicomplete

#####Ctags  
http://codingfreak.blogspot.com/2009/12/ctags-vim-with-steroids.html  
http://linux.byexamples.com/archives/177/vim-with-ctags/  
http://amix.dk/blog/post/19329  
http://stackoverflow.com/questions/563616/vim-and-ctags-tips-and-tricks  
http://www.thegeekstuff.com/2009/04/ctags-taglist-vi-vim-editor-as-sourece-code-browser/

#####Auto Ctags update:  
http://tbaggery.com/2011/08/08/effortless-ctags-with-git.html

###Vim shortcuts

`:123`  go a line number 123, as `123G`  

#####Moving in “Insert” mode:  
http://stackoverflow.com/questions/1737163/vim-traversing-text-in-insert-mode/1737259#1737259

#####From ~/.vimrc  
`<leader>` is set to “,”  
`<space>` is set to toggling folds (za, zc, zo...)  

`<leader>nt`: NERDTreeToggle  

#####To move around windows  
C-h  
C-j  
C-k  
C-l  

In insert mode pressing alt+h alt+j alt+k alt+l all take you to normal mode and move in the expected direction. You can hold down alt when moving even while in normal mode since the additional ESC that is sent does no harm. 

The advantage of using this scheme is that you can use the alt/meta+key combination with any normal mode key, e.g.

Alt+o opens a new line below the one you are currently editing,  
Alt+A appends to the end of the current line,  
Alt+p pastes at the current insert location.  
Alt+k moves up  
http://vim.wikia.com/wiki/Avoid_the_escape_key

> `ctrl-ww`: this will move between open windows

#####Tab movement  
You can change the tabs by `ctrl-pgup` and `ctrl-pgdown`  
C+PgUp map <S-Right> :tabn<CR>  
C+PgDwn map <S-Left>  :tabp<CR>  

If these don't work, just use `gt` `gT` to move between tabs

#####`F4`: find in files the current word  
First run `<leader>gr` to move to the root of the project.

#####Current word search with '\*' and '#'

#####From Vi & Vim book  
press J (shift+j) to join the two lines

#####Folding shortcuts, 2013-07-18  
http://vim.wikia.com/wiki/Folding  
zc: fold, zo: unfold, za: toggle;  
also zC, zO, zA  
look also zr/zR and zm/zM   
Use `space` for folding.   

#####Jumplists  
http://vim.wikia.com/wiki/Jumping_to_previously_visited_locations  
:jumps  
ctrl+O   <- -> ctrl+I (tab)  
ctrl+O is used in Tagbar as well.  


#####Buffers  
:ls, :buffers, :files -- show buffers  
C+6 to move to next buffer  
:bn, :bp, :bnext, :bprev, :b <name>  
:bd (close), :bw (write and close)  
Good points:  
http://vim.wikia.com/wiki/Easier_buffer_switching   
http://vim.wikia.com/wiki/Buffers  
http://vim.wikia.com/wiki/Vim_buffer_FAQ  


#####Change inside delimeters  
You can use a whole set of commands to change text inside brackets / parentheses / quotation marks. It's super useful to avoid having to find the start and finish of the group. Try `ci(, ci{, ci<, ci", ci'` depending on what kind of object you want to change. And the ca(, ca{, ... variants delete the brackets / quotation marks as well.    

Easy to remember: change inside a bracketed statement / change a bracketed statement.})>}) 

`cib/ciB`: Change the text inside the current set of parenthesis () or braces {}, respectively.


Another nice list of shortcuts: <http://www.stanford.edu/~jacobm/vim.html>


#####q:

That brings up an interactive history of : commands, you can edit them, and to
run one you hit "enter" on the line

#####Indenting text  

 - To reindent whole buffer `gg=G`  
 - To use markers: `ma` mark top of block to indent as marker 'a'  
...move cursor to end location  
`>'a`    Indent from marker 'a' to current location  
e='a' to reindent.


#####Opening files 
in splits `-o` and vertical splits `-O` from command line

#####Writing protected files
:w!! file.txt

XMonad
===========
https://github.com/davidbrewer/xmonad-ubuntu-conf

Adding multiple language support:

::: Moved to xmonad configuration, no .xsessionrc file --------------
In .xsessionrc add language config

    #!/usr/bin/env bash
    # setxkbmap -option "grp:lwin_toggle,grp_led:scroll,ctrl:nocaps" -layout "us,ru,uz"
    setxkbmap -option "grp:alt_shift_toggle,grp_led:scroll,ctrl:nocaps" -layout "us,ru,uz"
    # per window keyboard layout
    # kbdd
    xautolock -time 11 -locker "gnome-screensaver-command -l" -notify 10   -notifier "notify-send -t 5000 -i gtk-dialog-info 'Locking in 10 seconds'" &
    yakuake &

::: ------------------------------------------------------------------

To show keyboard indicator on top bar:
http://askubuntu.com/a/561596

Power management

Add following shortcuts to xmonad.hs

    myKeyBindings =
       [
         -- sleep with Mod + Shift + s
         , ((myModMask .|. shiftMask, xK_s), spawn "systemctl suspend")
         -- hibernate with Mod + Shift + h
         , ((myModMask .|. shiftMask, xK_h), spawn "sudo systemctl hibernate")
         -- lock screen with Mod + Shift + l
         , ((myModMask .|. shiftMask, xK_l), spawn "gnome-screensaver-command -l")
       ]

Also, add permission to sudoers:

    sudo visudo
    
    <username> ALL=NOPASSWD: /bin/systemctl hibernate
    
To autostart add the following to ~.xmonad/startup-hook

    yakuake &
    setxkbmap -option "grp:alt_shift_toggle,grp_led:scroll,ctrl:nocaps" -layout "us,ru,uz" &
    xautolock -time 11 -locker "gnome-screensaver-command -l" -notify 10 -notifier "notify-send -t 5000 -i gtk-dialog-info 'Locking in 10 seconds'" &
    #per window keyboard layout
    kbdd &
    
    #to find out monitor name, run xrandr with no argument; also, arandr is handy
    xrandr --output eDP1 --mode 1600x900 &

Gogland shortcuts
===========
* Shift+Enter: move to next line.
* Shift+Ctrl+A: find action.
* Alt+Home: access navigation bar.
* Shift+Ctrl+F12: hide tool windows.
* Ctrl+Shift+Space: smart completion.
* Ctrl+Space / Ctrl+Alt+Space: code completion.
* Ctrl+Shift+Enter: smart Enter (statement completion).
* Ctrl+Shift+E: recently edited files list.
* Ctrl+Shift+N: Navigate -> File.
* Ctrl+Shift+E: recently edited files list.
* Ctrl+Shift+I: quick definition.
* Ctrl+Click: go to definition.
* Ctrl+Hover: see arguments.
* Ctrl+Shift+P: finding out type of expression.
* Ctrl+F5: rerun debugger config.
* Alt+F12: move to terminal.
* Ctrl+Shift+F, double Shift: global searches


