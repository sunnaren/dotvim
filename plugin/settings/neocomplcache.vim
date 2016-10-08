"
" dotvim : https://github.com/dotphiles/dotvim
"
" Setup neocomplcache
"
" Authors:
"   Ben O'Hara <bohara@gmail.com>
"

if exists('g:loaded_neocomplcache')
  " Disable AutoComplPop. 
  let g:acp_enableAtStartup = 1 
  " Use neocomplcache. 
  let g:neocomplcache_enable_at_startup = 1 
  " Use smartcase. 
  let g:neocomplcache_enable_smart_case = 1 
  " Use camel case completion. 
  let g:neocomplcache_enable_camel_case_completion = 1 
  " Use underbar completion. 
  let g:neocomplcache_enable_underbar_completion = 1 
  " Set minimum syntax keyword length. 
  let g:neocomplcache_min_syntax_length = 3 
  let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*' 

  " Define dictionary. 
  let g:neocomplcache_dictionary_filetype_lists = { 
      \ 'default' : '', 
      \ 'vimshell' : $HOME.'/.vimshell_hist', 
      \ 'scheme' : $HOME.'/.gosh_completions' 
      \ } 

  " Define keyword. 
  if !exists('g:neocomplcache_keyword_patterns') 
      let g:neocomplcache_keyword_patterns = {} 
  endif 
  let g:neocomplcache_keyword_patterns['default'] = '\h\w*' 

  " Plugin key-mappings. 
  inoremap <expr><C-g>     neocomplcache#undo_completion() 
  inoremap <expr><C-l>     neocomplcache#complete_common_string() 

  " Recommended key-mappings. 
  " <CR>: close popup and save indent. 
  inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>" 
  " <TAB>: completion. 
  inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>" 
  " <C-h>, <BS>: close popup and delete backword char. 
  inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>" 
  inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>" 
  inoremap <expr><C-y>  neocomplcache#close_popup() 
  inoremap <expr><C-e>  neocomplcache#cancel_popup() 

  " AutoComplPop like behavior. 
  "let g:neocomplcache_enable_auto_select = 1 

  " Shell like behavior(not recommended). 
  "set completeopt+=longest 
  "let g:neocomplcache_enable_auto_select = 1 
  "let g:neocomplcache_disable_auto_complete = 1 
  "inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<TAB>" 
  "inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
endif
