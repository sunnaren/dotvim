
" Vundle itself
Bundle 'gmarik/vundle'
" Required for settings
Bundle 'chriskempson/base16-vim'

" General
if count(g:vundles, 'general')
  Bundle 'scrooloose/nerdtree'
  "The YankRing plugin allows the user to configure the number of yanked, deleted and changed text. "
  Bundle 'YankRing.vim'

  Bundle 'tpope/vim-repeat'
  "Bundle 'AutoClose'

  Bundle 'kien/ctrlp.vim'
  Bundle 'jistr/vim-nerdtree-tabs'

  "This script eases use of vim with sudo by adding the ability to
  Bundle 'vim-scripts/sudo.vim'

  "This plugin causes all trailing whitespace to be highlighted in red."
  Bundle 'bronson/vim-trailing-whitespace'

  "Visualize undo-tree"
  Bundle 'mbbill/undotree'

  "provides automatic closing of quotes, parenthesis, brackets, etc."
  Bundle 'Raimondi/delimitMate'

  "Lean & mean status/tabline for vim that's light as air."
  Bundle 'vim-airline/vim-airline'
  Bundle 'vim-airline/vim-airline-themes'

  "Desert color scheme"
  Bundle 'brafales/vim-desert256'
endif

if count(g:vundles, 'git')
  if executable('git')
    Bundle 'airblade/vim-gitgutter'
    Bundle 'tpope/vim-fugitive'
  endif
endif

if count(g:vundles, 'BeCool')
    Bundle 'vim-scripts/SearchComplete'
endif

if count(g:vundles, 'AuthoringTools')
    Bundle 'vim-scripts/LanguageTool'
    Bundle 'vimwiki/vimwiki'
endif


" General Programming
if count(g:vundles, 'programming')
  "Easy commenting with Nerd commenter
  Bundle 'scrooloose/nerdcommenter'

  "Aligning text with Tabular.vim"
  Bundle 'godlygeek/tabular'

  if executable('ack')
    Bundle 'mileszs/ack.vim'
  endif

  if v:version > 700
    Bundle 'scrooloose/syntastic'
    if executable('ctags')
      Bundle 'majutsushi/tagbar'
    endif
endif
endif

if count(g:vundles, 'completion')
    Bundle 'Shougo/neocomplete'
    Bundle 'Shougo/neosnippet'
    Bundle 'Shougo/neosnippet-snippets'
    Bundle 'scrooloose/snipmate-snippets'
    Bundle 'honza/vim-snippets'
    Bundle 'nathanaelkane/vim-indent-guides'
endif

" PHP
if count(g:vundles, 'php')
  Bundle 'spf13/PIV'
endif

" Python
if count(g:vundles, 'python')
  Bundle 'hynek/vim-python-pep8-indent'
  let g:syntastic_python_flake8_args='--ignore=E501'
endif

" Javascript
if count(g:vundles, 'javascript')
  Bundle 'leshill/vim-json'
  Bundle 'groenewege/vim-less'
  Bundle 'taxilian/vim-web-indent'
endif

" HTML
if count(g:vundles, 'html')
  Bundle 'HTML-AutoCloseTag'
  Bundle 'hail2u/vim-css3-syntax'
  Bundle 'juvenn/mustache.vim'
endif

" Ruby
if count(g:vundles, 'ruby')
  Bundle 'tpope/vim-rails'
endif

" Misc
if count(g:vundles, 'misc')
  Bundle 'tpope/vim-markdown'
  Bundle 'spf13/vim-preview'
  Bundle 'tpope/vim-cucumber'
  Bundle 'markcornick/vim-vagrant'
  Bundle 'ekalinin/Dockerfile.vim'
  if v:version > 701
    Bundle 'zhaocai/GoldenView.Vim'
  endif
  let g:goldenview__enable_default_mapping=0
endif
