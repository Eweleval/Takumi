"=============================================================================
" Neocomplete config
"=============================================================================
let g:neocomplete#data_directory= get(g:, 'neocomplete#data_directory',
      \ '~/.cache/neocomplete')
let g:acp_enableAtStartup = get(g:, 'acp_enableAtStartup', 0)
let g:neocomplete#enable_at_startup =
      \ get(g:, 'neocomplete#enable_at_startup', 1)
let g:neocomplete#enable_smart_case =
      \ get(g:, 'neocomplete#enable_smart_case', 1)
let g:neocomplete#enable_camel_case =
      \ get(g:, 'neocomplete#enable_camel_case', 1)
let g:neocomplete#enable_fuzzy_completion =
      \ get(g:, 'neocomplete#enable_fuzzy_completion', 1)
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length =
      \ get(g:, 'neocomplete#sources#syntax#min_keyword_length', 3)
let g:neocomplete#lock_buffer_name_pattern =
      \ get(g:, 'neocomplete#lock_buffer_name_pattern', '\*ku\*')

let g:neocomplete#sources#dictionary#dictionaries =
      \ get(g:, 'neocomplete#sources#dictionary#dictionaries', {
      \ 'default' : '',
      \ 'vimshell' : $CACHE.'/vimshell/command-history',
      \ 'java' : '~/.vim/dict/java.dict',
      \ 'ruby' : '~/.vim/dict/ruby.dict',
      \ 'scala' : '~/.vim/dict/scala.dict',
      \ })

let g:neocomplete#enable_auto_delimiter =
      \ get(g:, 'neocomplete#enable_auto_delimiter', 1)

if !exists('g:neocomplete#keyword_patterns')
  let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns._ =
      \ get(g:neocomplete#keyword_patterns, '_', '\h\k*(\?')

" AutoComplPop like behavior.
let g:neocomplete#enable_auto_select = 0

if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif

let g:neocomplete#sources#omni#input_patterns.perl =
      \ get(g:neocomplete#sources#omni#input_patterns, 'perl',
      \ '\h\w*->\h\w*\|\h\w*::')
let g:neocomplete#sources#omni#input_patterns.java =
      \ get(g:neocomplete#sources#omni#input_patterns, 'java',
      \ '[^. \t0-9]\.\w*')
let g:neocomplete#sources#omni#input_patterns.lua =
      \ get(g:neocomplete#sources#omni#input_patterns, 'lua',
      \ '[^. \t0-9]\.\w*')
let g:neocomplete#sources#omni#input_patterns.c =
      \ get(g:neocomplete#sources#omni#input_patterns, 'c',
      \ '[^.[:digit:] *\t]\%(\.\|->\)')
let g:neocomplete#sources#omni#input_patterns.cpp =
      \ get(g:neocomplete#sources#omni#input_patterns, 'cpp',
      \ '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::')
if !exists('g:neocomplete#force_omni_input_patterns')
  let g:neocomplete#force_omni_input_patterns = {}
endif

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif

inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
