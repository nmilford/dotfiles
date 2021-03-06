" I work in Ubuntu & LinuxMint.  This is what I do to setup my environment.

""" Install this file.
" curl https://raw.github.com/nmilford/dotfiles/master/vimrc > ~/.vimrc

""" Install Inconsolata.                                                                                                                                                            
" sudo apt-get install ttf-inconsolata
" gconftool-2 --set "/apps/gnome-terminal/profiles/Default/use_system_font" --type bool false
" gconftool-2 --set "/apps/gnome-terminal/profiles/Default/font" --type string "Inconsolata Medium 12"

""" Set Color palette for use with Solarized.
" gconftool-2 --set "/apps/gnome-terminal/profiles/Default/use_theme_colors" --type bool false
" gconftool-2 --set "/apps/gnome-terminal/profiles/Default/palette" --type string "#070736364242:#D3D301010202:#858599990000:#B5B589890000:#26268B8BD2D2:#D3D336368282:#2A2AA1A19898:#EEEEE8E8D5D5:#00002B2B3636:#CBCB4B4B1616:#58586E6E7575:#65657B7B8383:#838394949696:#6C6C7171C4C4:#9393A1A1A1A1:#FDFDF6F6E3E3"

""" Install git.
" sudo apt-get install git

""" Install ctags for tagbar. 
" sudo apt-get install exuberant-ctags

""" Install Vundle.
" mkdir -p ~/.vim/bundle/
" git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

""" Have Vundle install plugins.
" From within VIM:  :BundleInstall
" From the CLI:     vim +BundleInstall +qall

" Vundle to manage my plugins.
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" List plugins by github addresses, unless explicitly otherwise.
Bundle 'gmarik/vundle'
Bundle 'altercation/vim-colors-solarized'
Bundle 'vim-ruby/vim-ruby'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-fugitive'
Bundle 'vcscommand.vim'
Bundle 'tpope/vim-markdown'
Bundle 'Lokaltog/vim-powerline'
Bundle 'guns/paredit'
Bundle 'taglist.vim'
Bundle 'majutsushi/tagbar'
Bundle 'uguu-org/vim-matrix-screensaver'
Bundle 'elixir-lang/vim-elixir'
Bundle 'honza/dockerfile.vim'

""" Install VimClojure
" VimClojure does not work with Vundle, but pathogen makes it run.
" Uncomment below to install.
Bundle 'haesken/vimclojure-vundle'
Bundle "tpope/vim-pathogen"
filetype off
silent! call pathogen#incubate()
let g:vimclojure#HighlightBuiltins = 1
let g:vimclojure#ParenRainbow = 1
let tlist_clojure_settings = 'lisp;f:function'
let g:paredit_mode=1            

" Settings
set nocompatible                " Does not need to be compatable with VI.
filetype on                     " Enables filetype detection.
filetype plugin off              " Loads the filetype pluging for a file type when it is loaded.
filetype indent off              " Loads indent settings per filetype.
syntax enable                   " Enabled syntax highlighting.
set number                      " Shows line numbers.
set showmatch                   " Show matching parenthesis.
set nowrap                      " Don't wrap lines.
set backspace=indent,eol,start  " Make backspace work as expected regardless of mode.
set ignorecase                  " Ignore case when search pattern is all lower,
set smartcase                   "   but is case-sensitive if not all lower.
set hlsearch                    " Highlight search terms.
set incsearch                   " Show search matches as you type.
set wrapscan                    " Set the search scan to wrap around the file
set history=1000                " Remember more commands and search history
set undolevels=1000             " Allow more undo levels.
set visualbell                  " Don't beep!
set noerrorbells                " Don't beep!
set encoding=utf8               " UTF-8 encoding.
set nobackup                    " Let SCM deal with backups.
set nowb                        " Let SCM deal with backups.
set noswapfile                  " Let SCM deal with backups.
set expandtab                   " Tabs are spaces.
set shiftwidth=2                " Indents are 2 spaces.
set tabstop=2                   " A tab is 2 spaces.
set softtabstop=2               " Controls tab in inset mode.
set showmode                    " Display the current mode.
set ruler                       " Displays the cursor position in the buffer.
set cursorline                  " Highlights current line.
set laststatus=2                " Always show the status line.
set statusline+=%-3.3n\                       " Status: Buffer number.
set statusline+=%f\                           " Status: Filename.
set statusline+=%h%m%r%w                      " Status: Flags.
set statusline+=\[%{strlen(&ft)?&ft:'none'}]  " Status: FileType
set statusline+=\ [%{getcwd()}]               " Status: Current directory.
set statusline+=\ %{fugitive#statusline()}    " Status: Git info.
set statusline+=%=                            " Status: Right justify.
set statusline+=0x%-8B                        " Status: Character value.
set statusline+=%-14(%l,%c%V%)                " Status: Line and character.
set statusline+=%<%P                          " Status: File position.
set background=dark             " Enabled the Solarized color scheme.
set t_Co=16                     " Enabled the Solarized color scheme.
let g:solarized_termcolors=16   " Enabled the Solarized color scheme.
silent! colorscheme solarized           " Enabled the Solarized color scheme.

" 'sudo' saves the file.
cmap w!! %!sudo tee > /dev/null % <CR>                                                                                                             

" Toggle NERDTree
map <F2> :NERDTreeToggle<CR>

" Toggle TagList
map <F3> :TagbarToggle<CR>

