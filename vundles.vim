" ========================================
" Vim plugin configuration
" ========================================
"
" This file contains the list of plugin installed using vundle plugin manager.
" Once you've updated the list of plugin, you can run vundle update by issuing
" the command :BundleInstall from within vim or directly invoking it from the
" command line with the following syntax:
" vim --noplugin -u vim/vundles.vim -N "+set hidden" "+syntax on" +BundleClean! +BundleInstall +qall
" Filetype off is required by vundle
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/vundles/ "Submodules
call vundle#begin()


" let Vundle manage Vundle (required)
Plugin "gmarik/vundle"

" YADR's vundles are split up by category into smaller files
" This reduces churn and makes it easier to fork. See
" ~/.vim/vundles/ to edit them:
"runtime ruby.vundle
"runtime languages.vundle
"runtime git.vundle
"runtime appearance.vundle
"runtime textobjects.vundle
"runtime search.vundle
"runtime project.vundle
runtime vim-improvements.vundle

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
