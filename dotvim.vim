" Install vundle if not already installed
if has("user_commands")
  " Setting up Vundle - the vim plugin bundler
  let VundleInstalled=0
  let vundle_readme=expand('~/.vim/bundle/vundle.vim/README.md')
  if !filereadable(vundle_readme)
    echo "Installing Vundle.."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    let VundleInstalled=1
  endif
endif

"Base 16 colours"
let base16colorspace=256 " Access colors present in 256 colorspace
