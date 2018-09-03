
" Detect colors
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

" Plugins
call plug#begin('~/.vim/plugged')

"Plug 'critiqjo/lldb.nvim'
Plug 'rust-lang/rust.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'joshdick/onedark.vim'
Plug 'joshdick/airline-onedark.vim'
Plug 'racer-rust/vim-racer'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'carlitux/deoplete-ternjs'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'fishbullet/deoplete-ruby'
Plug 'timonv/vim-cargo'
Plug 'neomake/neomake'
Plug 'vim-ctrlspace/vim-ctrlspace'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
Plug 'rizzatti/dash.vim'
Plug 'vim-ruby/vim-ruby'
Plug 'osyo-manga/vim-monster'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'majutsushi/tagbar'
Plug 'powerman/vim-plugin-viewdoc'
Plug 'elixir-lang/vim-elixir'
Plug 'thinca/vim-ref'
Plug 'awetzel/elixir.nvim', { 'do': 'yes \| ./install.sh' }
Plug 'jiangmiao/auto-pairs'
Plug 'mileszs/ack.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'easymotion/vim-easymotion'
Plug 'djoshea/vim-autoread'
Plug 'https://github.com/fatih/vim-go'
Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'keith/swift.vim'
Plug 'mitsuse/autocomplete-swift'
Plug 'Chiel92/vim-autoformat'
Plug 'toml-lang/toml'
Plug 'tjdevries/nvim-langserver-shim'
Plug 'KabbAmine/zeavim.vim', {'on': [
            \   'Zeavim', 'Docset',
            \   '<Plug>Zeavim',
            \   '<Plug>ZVVisSelection',
            \   '<Plug>ZVKeyDocset',
            \   '<Plug>ZVMotion'
            \ ]}
Plug 'ronny/birds-of-paradise.vim'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

"Add plugins to &runtimepath
call plug#end()

" Enabling plugins by filetype:
filetype plugin on

" Syntax
syntax on
colorscheme birds-of-paradise
let g:onedark_termcolors=24

" Configuring airline
let g:airline_theme='tomorrow'

" Side Pane
let g:netrw_liststyle=3

" Racer Rust
"set hidden
let g:racer_cmd = "/home/goyox86/.cargo/bin/racer"
let g:racer_experimental_completer = 1

" TagBar Rust
let g:tagbar_type_rust = {
    \ 'ctagstype' : 'rust',
    \ 'kinds' : [
        \'T:types,type definitions',
        \'f:functions,function definitions',
        \'g:enum,enumeration names',
        \'s:structure names',
        \'m:modules,module names',
        \'c:consts,static constants',
        \'t:traits,traits',
        \'i:impls,trait implementations',
    \]
\}

" Tagbar Elixir
let g:tagbar_type_elixir = {
    \ 'ctagstype' : 'elixir',
    \ 'kinds' : [
        \ 'f:functions',
        \ 'functions:functions',
        \ 'c:callbacks',
        \ 'd:delegates',
        \ 'e:exceptions',
        \ 'i:implementations',
        \ 'a:macros',
        \ 'o:operators',
        \ 'm:modules',
        \ 'p:protocols',
        \ 'r:records'
    \ ]
\ }

" TagBar Auto
":autocmd BufRead * TagbarOpen

" enable mouse support
set mouse=a

" Neomake
aug run_neomake
  au!
  au BufWritePost,BufEnter * Neomake
aug END

let g:neomake_verbose = 0
let g:neomake_elixir_enabled_makers = ['elixir', 'credo']
let g:neomake_ruby_enabled_makers = ['rubocop']
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_rust_enabled_makers = ['rustc']

" Syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"
"let g:syntastic_enable_elixir_checker = 1
"let g:syntastic_elixir_checkers = ['elixir']

" Line numbers
set number

" Snippets
" YouCompleteMe and UltiSnips compatibility, with the helper of supertab
" (via http://stackoverflow.com/a/22253548/1626737)
let g:SuperTabDefaultCompletionType    = '<C-n>'
let g:SuperTabCrMapping                = 0
let g:UltiSnipsExpandTrigger           = '<tab>'
let g:UltiSnipsJumpForwardTrigger      = '<tab>'
let g:UltiSnipsJumpBackwardTrigger     = '<s-tab>'

" Spacing
filetype plugin indent on
setlocal tabstop=2
setlocal shiftwidth=2
autocmd Filetype rust setlocal tabstop=4 shiftwidth=4
autocmd Filetype ruby setlocal tabstop=2 shiftwidth=2
autocmd Filetype swift setlocal tabstop=2 shiftwidth=2
autocmd Filetype go setlocal tabstop=4 shiftwidth=4
autocmd Filetype javascript setlocal tabstop=2 shiftwidth=2
set expandtab

" Clipboard
set clipboard=unnamed

" Folding
setlocal foldmethod=syntax

" Using rust-lldb
let $LLDB = 'rust-lldb'

" nvim.lldb mappings
nmap <M-b> <Plug>LLBreakSwitch
vmap <F2> <Plug>LLStdInSelected
nnoremap <F4> :LLstdin<CR>
nnoremap <F5> :LLmode debug<CR>
nnoremap <S-F5> :LLmode code<CR>
nnoremap <F8> :LL continue<CR>
nnoremap <S-F8> :LL process interrupt<CR>
nnoremap <F9> :LL print <C-R>=expand('<cword>')<CR>
vnoremap <F9> :<C-U>LL print <C-R>=lldb#util#get_selection()<CR><CR>

" ctags
set tags=./tags;,tags;a

" AutoPairs
"let g:AutoPairsFlyMode = 1

" Deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_complete_delay = 0

" Deoplete ternjs.
let g:tern_request_timeout = 1
let g:tern_show_signature_in_pum = 0  " This do disable full signature type on autocomplete

" ctrl-space
set hidden

" monster.vim deoplete support
let g:monster#completion#rcodetools#backend = "async_rct_complete"
let g:deoplete#sources#omni#input_patterns = {
\   "ruby" : '[^. *\t]\.\w*\|\h\w*::',
\}

" FZF
nnoremap <silent> <c-p> :FZF<cr>
nnoremap <silent> <m-p> :FZFMru<cr>
nnoremap <silent> <c-n> :BLines<cr>
nnoremap <silent> <c-k> :Buffers<cr>

command! FZFMru call fzf#run(fzf#wrap({
      \ 'source': v:oldfiles
      \ }))

let g:fzf_buffers_jump = 1

let g:fzf_action = {
      \ 'ctrl-t': 'tab split',
      \ 'ctrl-s': 'split',
      \ 'ctrl-v': 'vsplit' }

let g:fzf_history_dir = '~/.fzf-history'
let g:airline#extensions#branch#enabled = 0

if has('nvim')
  aug fzf_setup
    au!
    au TermOpen term://*FZF tnoremap <silent> <buffer> <nowait> <esc> <c-c>
  aug END
end

" --column: Show column number
" --line-number: Show line number
" --no-heading: Do not show file headings in results
" --fixed-strings: Search term as a literal string
" --ignore-case: Case insensitive search
" --no-ignore: Do not respect .gitignore, etc...
" --hidden: Search hidden files and folders
" --follow: Follow symlinks
" --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
" --color: Search color options
command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)

set grepprg=rg\ --vimgrep

" Removing highlighting from searches
:map <esc> <esc> :noh<cr>

" Language client neovim
set hidden

let g:LanguageClient_serverCommands = {
    \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
    \ 'javascript': ['javascript-typescript-stdio'],
    \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
    \ 'python': ['pyls'],
    \ }

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
