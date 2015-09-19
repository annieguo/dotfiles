filetype off                  " required by vundle while you can enable
                              " it after defining vundle
" Make sure neobundle is installed
" script-variable    s:     Local to a :source'ed Vim script
" increase installation time out for some plugins which needs to build such as YCM
let g:neobundle#install_process_timeout = 600

let s:InitNeoBundle=0
let s:NeoBundleDir=expand('~/.vim/bundle/')
if has('vim_starting')
    if !isdirectory(s:NeoBundleDir.'neobundle.vim')
        echo "Installing neobundle.."
        silent !mkdir -p ~/.vim/bundle/
        silent !git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
        let s:InitNeoBundle=1
    endif
endif

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/neobundle.vim

call neobundle#begin(s:NeoBundleDir)

" let NeoBundle manage itself
NeoBundleFetch 'Shougo/neobundle.vim'

" Format and Display plugins
" solarized color scheme plugin by default vundle will use github repo
NeoBundle 'altercation/vim-colors-solarized'
" better white space hightlighting
NeoBundle 'ntpeters/vim-better-whitespace'
" light and configurable statusline
NeoBundle 'itchyny/lightline.vim'

" Syntax plugins
" syntastic syntax checking plugin
" NeoBundle 'scrooloose/syntastic'
" python-mode plugin
NeoBundle 'klen/python-mode'
" YouCompleteMe plugin which can automatically do code-completion
NeoBundle 'Valloric/YouCompleteMe', {
            \   'build': {
            \       'unix': './install.sh',
            \       'mac': './install.sh'
            \   }
            \}
" puppet syntax vim plugin
NeoBundle 'puppetlabs/puppet-syntax-vim'
" nicer python indent
NeoBundle 'hynek/vim-python-pep8-indent'

" Git wrapper for vim
NeoBundle 'tpope/vim-fugitive'

" Salt support for vim
NeoBundle 'saltstack/salt-vim'

" Golang support for vim
NeoBundle 'fatih/vim-go'

" Nerd tree
NeoBundle "scrooloose/nerdtree"
NeoBundle "Xuyuanp/nerdtree-git-plugin"

" vimproc
NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make -f make_mac.mak',
\     'linux' : 'make',
\     'unix' : 'gmake',
\    },
\ }

" ack search module
NeoBundle 'mileszs/ack.vim'

" vim tmux navigator
NeoBundle 'christoomey/vim-tmux-navigator'

" vim php syntax 
NeoBundle 'StanAngeloff/php.vim'

call neobundle#end()

if has('vim_starting') && s:InitNeoBundle == 1
    " Install all the plugins registered in Vundle
    echo "Install all your plugins..."
    NeoBundleInstall
endif
