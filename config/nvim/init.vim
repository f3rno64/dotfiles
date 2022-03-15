" f3rno's vim/neovim config.
" Put together with love over time.
" Eventually it will be split up harmoniously
" If anything, I found enough solid color schemes to last decades.
"
" https://github.com/f3rno64/dotfiles/config/nvim/init.vim

" {{{ 1. terminal setup

" {{{ reference

" t_SI: INSERT mode
" t_SR: REPLACE mode
" t_EI: NORMAL mode (ELSE)
"
" 1 blinking block
" 2 solid block
" 3 blinking underscore
" 4 solid underscore
" 5 blinking vertical bar
" 6 solid vertical bar

" }}}

" TODO: Break out strings as constants
if !has('gui_running')
  let &t_SI = "\<Esc>[3 q"
  let &t_SR = "\<Esc>[5 q"
  let &t_EI = "\<Esc>[1 q"
endif

" }}}
" {{{ 2. plugins

" {{{ loading

" {{{

if has('nvim')
  let g:xf_plugin_root = '/.nvim-plugins'
else
  let g:xf_plugin_root = '/.vim-plugins'
end

let g:xf_plugin_path = $HOME . g:xf_plugin_root

call plug#begin(g:xf_plugin_path)

" }}}
" {{{ script libraries

Plug 'google/vim-maktaba'
Plug 'xolox/vim-misc'
Plug 'godlygeek/tabular'

" }}}
" {{{ treesitter

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" }}}
" {{{ telescope

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" }}}
" {{{ fzf

Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'zackhsi/fzf-tags'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

" }}}
" {{{ search/result highlighting

Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'haya14busa/incsearch-easymotion.vim'
Plug 'timakro/vim-searchant'

" }}}
" {{{ snipppets

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" }}}
" {{{ syntax/languages

Plug 'a5ob7r/shellcheckrc.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'mboughaba/i3config.vim'
Plug 'moll/vim-node'
Plug 'gisphm/vim-gitignore'
Plug 'andyk/vim-liquid'
Plug 'jparise/vim-graphql'
Plug 'jez/vim-superman'

" {{{ markdown

Plug 'plasticboy/vim-markdown'
Plug 'suan/vim-instant-markdown'
" Plug 'mmai/vim-markdown-wiki'
" Plug 'rhysd/vim-gfm-syntax'
Plug 'mzlogin/vim-markdown-toc'
Plug 'dhruvasagar/vim-table-mode'

" }}}
" {{{ typescript

" Plug 'leafgarland/typescript-vim'
" Plug 'peitalin/vim-jsx-typescript'

" }}}
" {{{ javascript

Plug 'yuezk/vim-js'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'othree/es.next.syntax.vim'
Plug 'isRuslan/vim-es6', { 'do': 'rm -rf ./snippets' }
Plug 'elzr/vim-json'
Plug 'kristijanhusak/vim-js-file-import', { 'do': 'npm install' }

" }}}

" }}}
" {{{ git integration

Plug 'airblade/vim-gitgutter'
Plug 'rhysd/committia.vim' " better git commit layout
Plug 'int3/vim-extradite' " git log

" }}}
" {{{ visual

Plug 'jbgutierrez/vim-better-comments'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'majutsushi/tagbar'
Plug 'beauwilliams/focus.nvim'
Plug 'folke/zen-mode.nvim'
Plug 'junegunn/goyo.vim'

" }}}
" {{{ misc/general

Plug 'junegunn/goyo.vim'
Plug 'ggandor/lightspeed.nvim'
Plug 'yamatsum/nvim-cursorline'
" Plug 'kyazdani42/nvim-web-devicons' " for file icons
" Plug 'kyazdani42/nvim-tree.lua'
Plug 'Shougo/neco-vim'
Plug 'neoclide/coc-neco'
Plug 'neoclide/coc.nvim', { 'branch': 'release', 'do': 'yarn set version 2.4.0 && yarn install --immutable'}
Plug 'dense-analysis/ale'
Plug 'jlanzarotta/bufexplorer'
Plug 'vim-scripts/ZoomWin'
Plug 'tpope/vim-unimpaired'
Plug 'markonm/traces.vim' " live search/sub preview
Plug 'schickling/vim-bufonly'
Plug 'tpope/vim-commentary' " fast commenting
Plug 'Raimondi/delimitMate' " quote/etc autocomplete
" Plug 'AndrewRadev/dsf.vim' " delete surrounding function call
" Plug 'Shougo/echodoc.vim'
Plug 'wincent/terminus' " enhanced terminal integration
Plug 'ternjs/tern_for_vim', { 'do': 'npm i' }
Plug 'ntpeters/vim-better-whitespace'
Plug 'mhinz/vim-grepper', { 'on': ['Grepper', '<plug>(GrepperOperator)'] }
Plug 'michaeljsmith/vim-indent-object' " indent-level text object
Plug 'gcmt/wildfire.vim' " select text objects
" Plug 'mtth/scratch.vim'
Plug 'rhysd/clever-split.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'yuttie/comfortable-motion.vim' " smooth scrolling
Plug 'unblevable/quick-scope' " f jump highlights
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-eunuch' " shell command helpers
Plug 'fcpg/vim-shore' " mv to 1st non-blank char w/ j/k
Plug 'AndrewRadev/bufferize.vim'
Plug 'danro/rename.vim'
Plug 'vim-scripts/DrawIt'
Plug 'thaerkh/vim-workspace'
Plug 'Lenovsky/nuake'
Plug 'tpope/vim-surround'
Plug 'tyru/open-browser.vim'
Plug 'tpope/vim-endwise'
Plug 'wellle/visual-split.vim'
Plug 'wellle/targets.vim'
Plug 'valloric/MatchTagAlways'

if has('gui_running') || exists('g:GtkGuiLoaded')
  Plug 'drmikehenry/vim-fontsize'
endif

" }}}
" {{{ colorschemes

" {{{ light

Plug 'reedes/vim-colors-pencil'
Plug 'aonemd/kuroi.vim'
Plug 'vim-scripts/summerfruit256.vim'
Plug 'habamax/vim-colors-defminus'
Plug 'notpratheek/vim-sol'
Plug 'vim-scripts/mayansmoke'
Plug 'yasukotelin/shirotelin'

" }}}
" {{{ dark

Plug 'mangeshrex/uwu.vim'
Plug 'fenetikm/falcon'
Plug 'luisiacc/gruvbox-baby', {'branch': 'main'}
Plug 'mrjones2014/lighthaus.nvim'
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
Plug 'ayu-theme/ayu-vim'
Plug 'toupeira/vim-desertink'
" Plug 'fcpg/vim-farout'
" Plug 'fcpg/vim-fahrenheit'
" Plug 'bluz71/vim-moonfly-colors'
Plug 'romainl/Apprentice'
" Plug 'AlessandroYorba/Alduin'
" Plug 'djjcast/mirodark'
" Plug 'ajmwagar/vim-deus'
" Plug 'nanotech/jellybeans.vim'
" Plug 'yuttie/hydrangea-vim'
" Plug 'cocopon/iceberg.vim'
" Plug 'itchyny/landscape.vim'
" Plug 'sstallion/vim-wtf'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'AlessandroYorba/Sierra'
" Plug 'srcery-colors/srcery-vim'
Plug 'tpope/vim-vividchalk'
Plug 'jacoborus/tender.vim'
" Plug 'artanikin/vim-synthwave84'
Plug 'drewtempelmeyer/palenight.vim'
" Plug 'DemonCloud/J'
Plug 'whatyouhide/vim-gotham'
" Plug 'bignimbus/pop-punk.vim'
Plug 'franbach/miramare'
Plug 'trevordmiller/nova-vim'
" Plug 'acepukas/vim-zenburn'
" Plug 'arcticicestudio/nord-vim'
" Plug 'atahabaki/archman-vim'
Plug 'levelone/tequila-sunrise.vim'
" Plug 'ts-26a/vim-darkspace'
" Plug 'evturn/vim-hardaway'
" Plug 'ksevelyar/joker.vim'
" Plug 'tomasr/molokai'
" Plug 'hardcoreplayers/oceanic-material'
" Plug 'shannonmoeller/vim-monokai256'
Plug 'vim-scripts/vibrantink'

" }}}
" {{{ dual/multiple

Plug 'rakr/vim-two-firewatch'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'chriskempson/base16-vim'
Plug 'sainnhe/gruvbox-material'
Plug 'gruvbox-community/gruvbox'
Plug 'sonph/onehalf', { 'rtp': 'vim/' }
Plug 'NLKNguyen/papercolor-theme'
Plug 'rakr/vim-one'
" Plug 'severij/vadelma'
Plug 'iKarith/tigrana'
Plug 'sainnhe/sonokai'
Plug 'https://gitlab.com/protesilaos/tempus-themes-vim.git'
Plug 'junegunn/seoul256.vim'
" Plug 'machakann/vim-colorscheme-tatami'
Plug 'noahfrederick/vim-hemisu'
" Plug 'jan-warchol/selenized', { 'rtp': 'editors/vim' }
" Plug 'andbar-ru/vim-unicon'
" Plug 'wimstefan/vim-artesanal'
" Plug 'overcache/NeoSolarized'

" }}}

" }}}
" {{{

call plug#end()

" }}}

" }}}
" {{{ configuration

" {{{ ale

let g:ale_enabled = 1

let g:ale_linters = {
\ 'sh': ['shellcheck'],
\ 'javascript': ['eslint'],
\ 'typescript': ['tslint'],
\ 'json': ['eslint'],
\ 'ruby': ['rubocop'],
\ 'scss': ['stylelint'],
\ 'css': ['stylelint'],
\ 'vim': ['vint'],
\ 'yaml': ['yamllint'],
\ }

let g:ale_fixers = {
\ 'sh': ['shfmt'],
\ 'javascript': ['eslint'],
\ 'typescript': ['prettier'],
\ 'json': ['fixjson'],
\ 'ruby': ['rubocop'],
\ 'scss': ['stylelint'],
\ 'css': ['stylelint'],
\ 'vim': ['vint'],
\ }

let g:ale_lint_on_insert_leave = 1
let g:ale_lint_on_enter = 1
let g:ale_lint_on_save = 1
let g:ale_set_loclist = 1
let g:ale_set_quickfix = 0
let g:ale_set_highlights = 1
let g:ale_set_signs = 1
let g:ale_sign_highlight_linenrs = 1
let g:ale_virtualtext_cursor = 1
let g:ale_open_list = 0

" }}}
" {{{ coc/ultisnips integration (coc as the driver, ultisnips for expansion)

let g:coc#snippet#next = '<c-j>'
let g:coc#snippet#prev = '<c-k>'

let g:coc#node#path = $HOME . '.nvm/versions/node/v17.7.1/bin/node'
let g:coc#node#args = ['--max-old-space-size=16384', '--no-warnings']

" Helper to handle complex tab behavior, allowing for elegant snippet expansion
func! s:xf_coc_tab_handler() abort
  if pumvisible()
    call coc#_select_confirm()
  elseif coc#expandableOrJumpable()
    call coc#rpc#request('doKeymap', ['snippets-expand-jump',''])
  elseif <SID>xf_util_used_backspace()
    return "\<TAB>"
  endif

  " call coc#refresh()

  return ''
endfunc

func! s:xf_util_used_backspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunc

inoremap <silent><expr> <tab> <SID>xf_coc_tab_handler()

" {{{   - s:xf_ultisnips_log

let g:xf#ulitisnips#log = maktaba#log#Logger('ultisnips')

" {{{     - s:xf_ultisnips_log_debug(...)

func! s:xf_ultisnips_log_debug(...) abort
  call g:xf#ultisnips#log.LogDebug(a:000)
endfunc

" }}}
" {{{     - s:xf_ultisnips_log_info(...)

func! s:xf_ultisnips_log_info(...) abort
  call g:xf#ultisnips#log.LogInfo(a:000)
endfunc

" }}}
" {{{     - s:xf_ultisnips_log_warn(...)

func! s:xf_ultisnips_log_warn(...) abort
  call g:xf#ultisnips#log.LogWarn(a:000)
endfunc

" }}}
" {{{     - s:xf_ultisnips_log_error(...)

func! s:xf_ultisnips_log_error(message, ...) abort
  call g:xf#ultisnips#log.LogError(a:000)
endfunc

" }}}
" {{{     - s:xf_ultisnips_log_severe(...)

func! s:xf_ultisnips_log_severe(...) abort
  call g:xf#ultisnips#log.LogSevere(a:000)
endfunc

" }}}

" }}}

autocmd BufNewFile .gitignore CocCommand template.templateTop

" }}}
" {{{ echodoc

let g:echodoc#enable#at#startup = 1
let g:echodoc#type = 'virtual'

" }}}
" {{{ fzf

set rtp+=/usr/bin/fzf
set rtp+=$HOME/.cargo/bin

let g:fzf#command#prefix = 'FZF'
let g:fzf#buffers#jump = 1
let g:fzf#tags#command = 'ctags -R'
let g:fzf#layout = { 'window': { 'width': 0.9, 'height': 0.6 } }

" TODO: Refactor out of command, or consider moving more logic to commands
command! -bang -nargs=? -complete=dir FZFShowFileExplorer :call <SID>xf_fzf_find_files(<q-args>, <bang>0)

func! s:xf_fzf_find_files(q_args, bang) abort
  let s:preview_path = g:xf_plugin_path . '/fzf.vim/bin/preview.sh {}'
  let s:q_args = a:q_args || ''
  let s:bang = a:bang || ''

  call fzf#vim#files(s:q_args, {
    \   'options': [
    \     '--reverse',
    \     '--info=inline',
    \     '--preview',
    \     s:preview_path
    \   ]}, s:bang)
endfunc

" TODO: Check for/extract fzf.vim path
" TOOD: Explode final preview script path

" }}}
" {{{ gitgutter

let g:gitgutter_max_signs = 1000

" }}}
" {{{ goyo

let g:goyo_height = '80%'
let g:goyo_width = '60%'

func! s:goyo_enter()
  set noshowmode
  set noshowcmd
  set nonumber

  let b:coc_suggest_disable = 1 " popup 'invisible' but hides content
endfunc

func! s:goyo_leave()
  set showmode
  set showcmd
  set number
  let b:coc_suggest_disable = 0

  " Workaround for color scheme issue
  " TODO: Update w/ dynamic config path
  if has('nvim')
    silent! source $HOME/.config/nvim/init.vim
  else
    silent! source $HOME/.vimrc
  endif
endfunc

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

" }}}
" {{{ incsearch

let g:incsearch#auto#nohlsearch = 1 " disable hlsearch on cursor move

" query completion w/ buffer text
func! s:incsearch_keymap()
  IncSearchNoreMap <Tab> <Over>(buffer-complete)
  IncSearchNoreMap <S-Tab> <Over>(buffer-complete-prev)
endfunc

augroup incsearch-keymap
  autocmd!
  autocmd VimEnter * call <SID>incsearch_keymap()
augroup END

" }}}
" {{{ javascript-libraries-syntax

let g:used#javascript#libs = 'underscore,react,chai'

" }}}
" {{{ MatchTagAlways

let g:mta_filetypes = {
\ 'html' : 1,
\ 'xml' : 1,
\ 'jinja.html' : 1,
\}

" }}}
" {{{ nuake

let g:nuake_start_insert = 0
let g:nuake_position = 'bottom'
let g:nuake_size = 0.4

" }}}
" {{{ python-syntax

let g:python_highlight_all = 1

" }}}
" {{{ ultisnips

autocmd FileType js,javascript UltiSnipsAddFiletypes javascript-jsdoc

let g:UltiSnipsEnableSnipMate = 0
let g:UltiSnipsExpandTrigger = '<c-space>'
let g:UltiSnipsListSnippets = '<c-space><c-space>'
let g:UltiSnipsJumpForwardTrigger = '<c-j>'
let g:UltiSnipsJumpBackwardTrigger = '<c-k>'
" let g:UltiSnipsSnippetDirectories = [
"       \   $HOME . '/.src/github/f3rno64/vim-snippets/ultisnips',
"       \ ]

" }}}
" {{{ vim-better-whitespace

let g:better_whitespace_enabled = 1

" }}}
" {{{ vim-better-comments

let g:bettercomments_included = ['javascript', 'js', 'go', 'ruby', 'python']

" }}}
" {{{ vim-floaterm

hi Floaterm guibg=black
hi FloatermBorder guibg=green guifg=black

" }}}
" {{{ vim-grepper

let g:grepper = {}
let g:grepper.tools = ['ag']
let g:grepper.highlight = 1
let g:grepper.quickfix = 1
let g:grepper.open = 1
let g:grepper.switch = 1
let g:grepper.dir = 'repo,file'
let g:grepper.ag = {
\ 'grepprg': 'ag --ignore-dir=modules --ignore-dir=node_modules --ignore-dir=.undodir --ignore-dir=docs/dist --ignore-dir=bower_components --ignore-dir=dist --ignore-dir=build'
\ }

" }}}
" {{{ vim-gutentags

let g:gutentags_ctags_exclude = ['coverage/*', 'node_modules/*', '*%*', 'docs/*']
let g:gutentags_enabled = 1

" }}}
" {{{ vim-highlightedyank

let g:highlightedyank_highlight_duration = 300

" }}}
" {{{ vim-instant-markdown

let g:instant_markdown_autostart = 0

" }}}
" {{{ vim-js-file-import

let g:js_file_import_sort_after_insert = 1
let g:js_file_import_prompt_if_no_tag = 0
let g:js_file_import_omit_semicolon = 1
let g:js_file_import_use_fzf = 1
let g:js_file_import_no_mappings = 1

" }}}
" {{{ vim-jsx-pretty

let g:vim_jsx_pretty_colorful_config = 1

" }}}
" {{{ vim-markdown

let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_folding_style_pythonic = 1
let g:vim_markdown_folding_level = 2
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_json_frontmatter = 1
let g:vim_markdown_strikethrough = 1
let g:vim_markdown_new_list_item_indent = 2
let g:vim_markdown_no_extensions_in_markdown = 1
let g:vim_markdown_edit_url_in = 'current' " 'vsplit'
let g:vim_markdown_autowrite = 1

" }}}
" {{{ vim-markdown-toc

let g:vmt_auto_update_on_save = 1
let g:vmt_dont_insert_fence = 0
let g:vmt_fence_hidden_markdown_style = 'GFM'
let g:vmt_cycle_list_item_markers = 0
let g:vmt_list_item_char = '-'
let g:vmt_include_headings_before = 1

" }}}
" {{{ vim-move

let g:move_key_modifier = 'C'

" }}}
" {{{ vim-perpetuloc

nnoremap <leader>[ :Lnext<cr>
nnoremap <leader>] :Lprevious<cr>

" }}}
" {{{ vim-ripgrep

let g:vim_search_pulse_mode = 'cursor_line'

" }}}
" {{{ vim-searchant

let g:searchant_all = 0 " only toggle current result highlight

" Disable Searchant highlight when incsearch.vim highlights also disable
autocmd CursorMoved * call SearchantStop()

func! SearchantStop() abort
  exec "normal \<Plug>SearchantStop"
endfunc

" }}}
" {{{ vim-test
" TODO: Refactor this; fugly handling of state (killing kitty)

" {{{ functions

" {{{ s:xf_test_mocha_transform()

func! s:xf_test_mocha_transform(cmd) abort
  if g:test#strategy == 'kitty'
    call <SID>xf_test_kitty_set_env_vars()
  endif

  return 'NODE_PATH=lib NODE_ENV=test MOCHA=1 ' . a:cmd
endfunc

" }}}
" {{{ s:xf_test_kitty_set_env_vars()

func! s:xf_test_kitty_set_env_vars() abort
  let s:kitty_socket = 'unix:'
  let s:kitty_socket .= expand('/tmp/kitty_socket*')

  call setenv('KITTY_LISTEN_ON', s:kitty_socket)
endfunc

" }}}
" {{{ s:xf_test_init_strategy()

func! s:xf_test_init_strategy() abort
  call <SID>xf_test_kitty_set_env_vars()

  if strlen($KITTY_LISTEN_ON) > 0
    let g:test#strategy = 'kitty'

    echo 'test strategy set to "kitty"'
  else
    let g:test#vim#term#position = "belowright"
    let g:test#strategy = 'neovim'

    echo 'test strategy set to "neovim"'
  endif
endfunc

" }}}
" {{{ s:xf_test_run(cmd)
" https://github.com/janko/vim-test/issues/272_issuecomment-515749091

func! s:xf_test_run(cmd) abort
  for marker in g:root#markers
    let marker_file = findfile(marker, expand('%:p:h') . ';')
    echomsg marker_file
    if strlen(marker_file) > 0
      let g:test#project#root = fnamemodify(marker_file, ":p:h")
      break
    endif

    let marker_dir = finddir(marker, expand('%:p:h') . ';')
    echomsg marker_dir

    if strlen(marker_dir) > 0
      let g:test#project#root = fnamemodify(marker_dir, ":p:h")
      break
    endif
  endfor

  execute a:cmd
endfunc

" }}}

" }}}
" {{{ variables

let g:root#markers = ['.git', 'README.md', 'LICENSE.md']
let test#strategy = 'neovim'
let g:test#preserve_screen = 1
let g:test#javascript#mocha#options = '--verbose'
let g:test#transformation = 'mocha'
let g:test#custom#transformations = {
  \   'javascript': function('<SID>xf_test_mocha_transform'),
  \   'mocha': function('<SID>xf_test_mocha_transform'),
  \ }

" }}}

call <SID>xf_test_init_strategy()

" }}}
" {{{ vim-workspace

let g:workspace_create_new_tabs = 0
let g:workspace_autosave_untrailspaces = 0
let g:workspace_autosave = 0

if has('nvim')
  let g:workspace_session_directory = $HOME . '/.config/nvim/sessions/'
else
  let g:workspace_session_directory = $HOME . '/.vim/sessions/'
endif

" }}}
" {{{ zenmode

lua << EOF
  require("zen-mode").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
EOF

" }}}

" }}}

" }}}
" {{{ 3. configuration

" {{{ 3.b f3rno function library

" {{{ - functions

" {{{   - s:xf_folds_toggle()

func! s:xf_folds_toggle() abort
  if &foldlevel > 0
    call <SID>xf_folds_collapse()
  else
    call <SID>xf_folds_expand()
  endif
endfunc

" }}}
" {{{   - s:xf_folds_collapse()

func! s:xf_folds_collapse() abort
  let &foldlevel = 0
endfunc

" }}}
" {{{   - s:xf_folds_expand()

func! s:xf_folds_expand() abort
  let &foldlevel = 99
endfunc

" }}}

" }}}

" }}}
" {{{ 3.a general configuration

" {{{ general

" Disable background erase for kitty
let &t_ut=''

syntax enable

filetype plugin on
filetype indent on

let &shell=$SHELL

set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

set timeout           " for mappings
set timeoutlen=300    " default value
set ttimeout          " for key codes
set ttimeoutlen=10    " unnoticeable small value

set encoding=utf-8
set number
set nojoinspaces
set splitbelow
set showmatch
" set incsearch " incsearch.vim used
set hlsearch
set colorcolumn=80
set cmdheight=2
set signcolumn=yes
set tags=./tags;,tags;$HOME;
set regexpengine=0
set backspace=indent,eol,start
set autoread
set showtabline=2
set shortmess-=S
set showcmd
set smartcase
set hidden
set tw=79 " word wrap
set nocompatible
set equalalways
set wildignore+=*node_modules/**
set noswapfile
set nobackup
set nowritebackup
set concealcursor=nc
set conceallevel=3

" Disable python2 check
let g:loaded_python_provider=0

" }}}
" {{{ folding

set foldmethod=marker
set foldcolumn=1
set foldlevel=1

" }}}
" {{{ statusline

" {{{ functions

func! StatuslineALE() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors

  if l:counts.total == 0
    return 'OK'
  endif

  return printf('%dW %dE', all_non_errors, all_errors)
endfunc

" }}}

set laststatus=2

" left
set statusline=
set statusline+=%#PmenuSel#
set statusline+=\ " padding
" set statusline+=%{FugitiveHead()}
" set statusline+=\ " padding
set statusline+=%#CursorColumn#
set statusline+=\ " padding
set statusline+=%{StatuslineALE()}
set statusline+=\ " padding
set statusline+=%{coc#status()}
set statusline+=\ " padding
set statusline+=%#LineNr#
set statusline+=\ " padding
set statusline+=%f

" right
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ " padding
set statusline+=%y
set statusline+=\ " padding
set statusline+=%#PmenuSel#
set statusline+=\ L%l\ %p%%
set statusline+=\ " padding

" }}}
" {{{ undo history

if has('persistent_undo')
  set undofile

  if has('nvim')
    let myUndoDir=$HOME . '/.config/nvim/undodir'
    let &undodir=myUndoDir
    execute 'silent !mkdir ' . myUndoDir . ' > /dev/null 2>&1'
  else
    let myUndoDir=$HOME . '/.vim/undodir'
    let &undodir=myUndoDir
    execute 'silent !mkdir ' . myUndoDir . ' > /dev/null 2>&1'
  endif
endif

" }}}
" {{{ autocommands

augroup editing
  au!
  au InsertLeave * set nopaste
  au BufEnter * set number
  au BufLeave * set nonumber
augroup END

autocmd FileType snippets setlocal foldmethod=marker

" hacky fix for syntax highlighting in large files
autocmd WinEnter,Filetype * syntax sync fromstart

au BufNewFile,BufRead *.nvim setf vim
au BufNewFile,BufRead */i3/config setf i3config

" disable cursorline in insert mode
" autocmd InsertLeave,WinEnter * set cursorline
" autocmd InsertEnter,WinLeave * set nocursorline

" autosave
autocmd InsertLeave,TextChanged * update

" }}}
" {{{ JS block comment indent fix

func! s:CustomJSIndentExpr()
  if getline(v:lnum) !~ '^\s*\*'
    return GetJsxIndent() " Do normal indent
  else
    return -1 " Don't indent comments
  endif
endfunc

autocmd FileType javascript setlocal indentkeys+==* indentexpr=s:CustomJSIndentExpr()

" }}}
" {{{ statusline fix

" Fix for https://github.com/itchyny/lightline.vim/issues/448
" (affects builtin statusline as well)
func! FixLightlineStartupRender(timer)
  execute('resize -1')
  execute('resize +1')
endfunc

autocmd VimEnter * call timer_start(600, 'FixLightlineStartupRender')

" }}}

" }}}

" }}}
" {{{ 4. colorscheme

" {{{ reference

" {{{ dark

" jellybeans
" synthwave84
" dracula
" alduin
" desertink
" gotham
" miramare
" nova
" zenburn
" nord
" tequila-sunrise
" base16-seti
" tender
" selenized_bw
" sonokai
" falcon
" sierra
" srcery
" tender
" vim-farout
" vim-desertink

" }}}
" {{{ black

" base16-irblack
" moonfly
" archman
" vividchalk
" darkspace
" vim-hardaway

" }}}
" {{{ dual

" hemisu
" artesanal
" ayu
" gruvbox
" PaperColor

" }}}
" {{{ light

" sol
" mayansmoke
" flatwhite
" pencil
" paper
" kuroi
" shirotelin
" defminus
" summerfruit256

" }}}

" }}}
" {{{ enable 256 colors

set t_Co=256

if has("termguicolors")
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" }}}
" {{{ configuration

" {{{ ayu

" let ayucolor='light'
" let ayucolor='mirage'
let ayucolor='dark'

" }}}
" {{{ gruvbox

let g:gruvbox#contrast#dark = 'hard'
let g:gruvbox#improved#strings = 0
let g:gruvbox#improved#warnings = 0
let g:gruvbox#bold = 1
let g:gruvbox#italic = 1
let g:gruvbox#underline = 1
let g:gruvbox#invert#selection = 0

" }}}
" {{{ gruvbox_material

let g:gruvbox#material#background = 'hard'

" }}}
" {{{ OceanicMaterial

let g:oceanic#material#enable#bold = 1
let g:oceanic#material#enable#italic = 1

" }}}
" {{{ seoul256

" 233 (darkest) - 239 (lightest)
let g:seoul256#background = 234

" 252 (darkest) - 256 (lightest)
let g:seoul256#light#background = 252

" }}}
" {{{ sierra

let g:sierra#Twilight = 1

" }}}
" {{{ sonokai

" let g:sonokai_style = 'andromeda'
let g:sonokai#style = 'shusia'
" let g:sonokai_style = 'atlantis'
" let g:sonokai_style = 'maia'
let g:sonokai#enable#italic = 1

" }}}
" {{{ miramare

let g:miramare#enable#italic = 1

" }}}
" {{{ molokai

" let g:molokai_original = 1

" }}}
" {{{ NeoSolarized

let g:neosolarized#contrast = 'high' " low, normal, high
let g:neosolarized#visibility = "normal" " low, normal, high
let g:neosolarized#bold = 1
let g:neosolarized#underline = 1
let g:neosolarized#italic = 1

" }}}
" {{{ alduin

" Almost black bg
let g:alduin#Shout#Dragon#Aspect = 1

" Black bg
" let g:alduin_Shout_Become_Ethereal = 1

" Deep red for special highlighting groups
" let g:alduin_Shout_Fire_Breath = 1

" Remove block matchparens & add underline
" let g:alduin_Shout_Aura_Whisper = 1

" }}}
" {{{ one

let g:one#allow#italics = 1

" }}}
" {{{ sonokai

" shusia, andromeda, atlantis, maia
let g:sonokai_style = 'andromeda'
let g:sonokai_enable_italic = 1
let g:sonokai_better_performance = 1

" }}}
" {{{ srcery

let g:srcery#italic = 1

" }}}
" {{{ tokyonight

let g:tokyonight_style = "night"
let g:tokyonight_italic_functions = 1

" }}}
" {{{ falcon

let g:falcon_background = 1
let g:falcon_inactive = 1

" }}}

" }}}

set background=dark

" moonfly
" vibrantink
" farout
" hemisu
" paper
" gotham
" desertink
" nova
" oceanic_material
" base16-irblack
" base16-github
" ayu
" tequila-sunrise
" tokyonight
" PaperColor
" falcon
colorscheme base16-irblack


" }}}
" {{{ 5. gui

if has('gui_running') || exists('g:GtkGuiLoaded')

" {{{ font & dynamic size

" {{{ reference

" Iosevka
" FuraCode Nerd Font | cali
" Hasklug Nerd Font
" Input Mono (Normal|Narrow|Condensed|Compressed)
" Rec Mono (Linear|Duotone|SemiCasual|Casual)
" Victor Mono
" Operator Mono
" Hermit
" Source Code Pro
" JetBrainsMono Nerd Font
" BlexMono Nerd Font | liga, zero, frac

" }}}
" {{{ functions

func! SetFont()
  if has('nvim') && !has('gui_vimr')
    call rpcnotify(1, 'Gui', 'Font', g:font_name . ' ' . g:font_size)
    call rpcnotify(1, 'Gui', 'FontFeatures', g:font_features)
  else
    let &guifont = g:font_name . " " . g:font_size
  endif
endfunc

func! AdjustFontSize(delta)
  let g:font_size += a:delta
  call SetFont()
endfunc

" }}}
" {{{ keybindings

nnoremap <C-=> :call AdjustFontSize(1)<cr>
nnoremap <C-+> :call AdjustFontSize(1)<cr>
nnoremap <C--> :call AdjustFontSize(-1)<cr>

" }}}

" let g:font_name = 'BlexMono Nerd Font'
" let g:font_features = 'liga, zero, frac'
let g:font_name = 'Jet Brains Mono Nerd Font'
let g:font_features = ''
let g:font_size = 10

call SetFont()

" }}}
" {{{ terminal

tnoremap <Esc> <C-\><C-n>

" }}}
" {{{ Neovim-GTK

if has('nvim') && ! has('gui_vimr')
  " Paste via shift + insert
  map <S-Insert> <MiddleMouse>
  map! <S-Insert> <MiddleMouse>

  call rpcnotify(1, 'Gui', 'Option', 'Popupmenu', 0)
  call rpcnotify(1, 'Gui', 'Option', 'Tabline', 0)
  call rpcnotify(1, 'Gui', 'Option', 'Cmdline', 0)

  let g:GuiInternalClipoard = 1
endif

" }}}
" {{{ GVim

if !has('nvim')
  set guioptions-=T " remove toolbar
  set guioptions-=m " remove menu bar
  set guioptions-=e " use terminal tabline
  set guioptions-=r " remove right scrollbar
  set guioptions-=L " remove left scrollbar

  " Paste via shift + insert
  map <S-Insert> <MiddleMouse>
  map! <S-Insert> <MiddleMouse>
endif

" }}}
" {{{ cursor init

if has('nvim') && has('gui_running')
  set guicursor+=n-v-c-sm:block
  set guicursor+=i-ci-ve:ver25
  set guicursor+=r-cr-o:hor20
  set guicursor+=a:blinkon0
endif

" }}}

endif

" }}}
" {{{ 6. netrw

let g:netrw_banner = 0
let g:netrw_altv = 1 " split to right
" let g:netrw_browse_split = 2 " open file in right split
let g:netrw_sizestyle = "H" " human readable base 1024
let g:netrw_liststyle = 3
let g:netrw_winsize = 20
let g:netrw_nogx = 1
let g:netrw_browsex_viewer = 'xdg-open'
let g:netrw_list_hide = netrw_gitignore#Hide()

" }}}
" {{{ 7. search highlight toggle TODO

" TODO: Extract this as own plugin..

" {{{ 7.a functions

" {{{ - s:xf_hlsearch_enable()

func! s:xf_hlsearch_enable()
  setlocal hlsearch
endfunc

" }}}
" {{{ - s:xf_hlsearch_disable()

func! s:xf_hlsearch_disable()
  setlocal nohlsearch
endfunc

" }}}

" }}}
" {{{ 7.b autocommands

augroup f3rno_dynamic_search_hl
  autocmd!
  autocmd InsertEnter * call <SID>xf_hlsearch_disable()
  autocmd InsertLeave * call <SID>xf_hlsearch_enable()
augroup END

" }}}

" }}}
" {{{ 8. keybindings

let mapleader = ','

" {{{ fast line movements

nnoremap J 2j
nnoremap K 2k

" }}}
" {{{ ale

nmap <silent> <leader>aj :ALENext<cr>
nmap <silent> <leader>ak :ALEPrevious<cr>

" }}}
" {{{ buffer control

nnoremap <leader>n :bnext<cr>
nnoremap <leader>p :bprev<cr>
nnoremap <silent> <leader>bo :BufOnly<cr>

" }}}
" {{{ ctrl+backspace delete word

imap <C-BS> <C-W>
noremap! <C-BS> <C-w>
noremap! <C-h> <C-w>

" }}}
" {{{ coc

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> <leader>rn <Plug>(coc-rename)
nmap <silent> <leader>rf <Plug>(coc-refactor)
xmap <silent> if <Plug>(coc-funcobj-i)
omap <silent> if <Plug>(coc-funcobj-i)
xmap <silent> af <Plug>(coc-funcobj-a)
omap <silent> af <Plug>(coc-funcobj-a)
xmap <silent> ic <Plug>(coc-classobj-i)
omap <silent> ic <Plug>(coc-classobj-i)
xmap <silent> ac <Plug>(coc-classobj-a)
omap <silent> ac <Plug>(coc-classobj-a)

nnoremap <silent> <leader>k :call CocAction('doHover')<cr>
inoremap <silent><expr> <c-space> coc#refresh()

" }}}
" {{{ easymotion

map in <Plug>(easymotion-next)
map iN <Plug>(easymotion-prev)

" }}}
" {{{ help

nnoremap <leader><s-h> :execute 'vert help ' . expand('<cword>')<cr>

" }}}
" {{{ fast quit

nnoremap <silent> <leader>q :qa<cr>
nnoremap <silent> <leader>Q :q!<cr>

" }}}
" {{{ folds

" {{{ FoldBlockByIndent()

func! s:FoldBlockByIndent() abort
  let s:orig_loc = getcurpos()
  let s:buf_num = s:orig_loc[0]
  let s:buf_info= getbufinfo(bufname())

  if len(s:buf_info) == 0
    throw 'no buffers open'
  endif

  let s:buf_len = s:buf_info[0]['linecount']

  let s:col = s:orig_loc[2]
  let s:indent_step = len(indent('.')) / &tabstop
  let s:indent_str = ''

  let s:block_start = 0
  let s:block_end = 0

  while s:block_start == 0 || s:block_end == 0
    if len(s:indent_str) >= len(getline('.'))
      throw 'found no block boundary below the cursor column (' . s:col . ')'
    endif

    let s:search_str = '^' . s:indent_str . '\S'
    let s:indent_str .= s:indent_step

    let s:block_start = search(s:search_str, 'bnw')
    let s:block_end = search(s:search_str, 'nw')
  endwhile

  call append(s:block_start - 1, ['', ''])
  call append(s:block_end + 2, ['', ''])

  let s:block_start += 2
  let s:block_end += 2

  call cursor([max([1, s:block_start - 2]), 1])
  exec 'normal! v' . min([s:buf_len, s:block_end + 2]) . 'G$zf'
  call cursor([s:orig_loc[1], s:orig_loc[2]])
endfunc

" }}}

" Surround visual block in a new fold
nnoremap <silent><expr> <leader>wf <SID>FoldBlockByIndent()

" Toggle fold
nnoremap <silent> <leader><Space> @=(foldlevel('.')?'za':"\<Space>")<cr>

" Toggle all folds
nnoremap <silent> fff :call <SID>xf_folds_toggle()<cr>

" }}}
" " {{{ fzf

" nnoremap <silent> <c-p> :FZFShowFileExplorer<cr>
" nnoremap <silent> <leader>ZC :FZFCommands<cr>
" nnoremap <silent> <leader>ZB :FZFBTags<cr>

" " {{{ search open buffers
" func! s:xf_buff_list() abort
"   let l:str = ''

"   redir => l:str
"   silent l:str
"   redir END

"   return split(l:str, '\n')
" endfunc

" func! s:xf_buff_open_by_index(i) abort
"   let l:i = marktab#ensure#IsNumber(a:i)
"   let l:id = matchstr(l:i, '^[ 0-9]*')

"   exec 'buffer ' . trim(l:id)
" endfunc

" func! s:xf_fzf_open_buff_list() abort
"   exec fzf#run({
"     \   'source':  reverse(<SID>xf_buff_list()),
"     \   'sink':    function(<SID>xf_buff_open_by_index),
"     \   'down':    len(<SID>xf_buff_list()) + 2,
"     \   'options': '+m'
"     \ })
" endfunc

" nnoremap <silent> <Leader><Enter> <SID>xf_fzf_open_buff_list()

" " }}}
" " {{{ search tags

" func! s:tags_sink(line)
"   let parts = split(a:line, '\t\zs')
"   let excmd = matchstr(parts[2:], '^.*\ze;"\t')

"   execute 'silent e' parts[1][:-2]

"   let [magic, &magic] = [&magic, 0]

"   execute excmd

"   let &magic = magic
" endfunc

" func! s:tags()
"   call fzf#run({
"   'source':  'cat '.join(map(tagfiles(), 'fnamemodify(v:val, ":S")')).
"              '| grep -v -a ^!',
"   'options': '+m -d "\t" --with-nth 1,4.. -n 1 --tiebreak=index',
"   'down':    '40%',
"   'sink':    function('s:tags_sink')})
" endfunc

" command! Tags call <SID>tags()

" " }}}

" " }}}
" {{{ goyo

nnoremap <silent> <leader>g :Goyo<cr>

" }}}
" {{{ grepper

nnoremap <silent> <leader>G :Grepper<cr>
nnoremap <silent> <leader>W :Grepper-cword<cr>

" }}}
" {{{ incsearch

map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
map i/ <Plug>(incsearch-easymotion-/)
map i? <Plug>(incsearch-easymotion-?)
map ig/ <Plug>(incsearch-easymotion-stay)
map z/ <Plug>(incsearch-fuzzy-/)
map z? <Plug>(incsearch-fuzzy-?)
map zg/ <Plug>(incsearch-fuzzy-stay)

" }}}
" {{{ js eslint (disabled)

" func! s:xf_eslint_init() abort
"   setlocal makeprg=npm\ run\ lint\ --\ --quiet\ --no-color\ -f\ unix
"   nnoremap <buffer><silent> <leader>lf :make --fix <cr>:cwindow<cr>:redraw!<cr>
"   nnoremap <buffer><silent> <leader>l :make <cr>:cwindow<cr>:redraw!<cr>
" endfunc

" autocmd FileType javascript s:xf_eslint_init()

" }}}
" {{{ netrw

nnoremap <leader>e :Lexplore<cr>

" }}}
" {{{ nuake

nnoremap <leader>T :Nuake<cr>
inoremap <leader>T <C-\><C-n>:Nuake<cr>
tnoremap <leader>T <C-\><C-n>:Nuake<cr>

" }}}
" {{{ open-browser.vim

nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)

" }}}
" {{{ splits

nnoremap <up> :resize -1<cr>
nnoremap <down> :resize +1<cr>
nnoremap <left> :vert resize +1<cr>
nnoremap <right> :vert resize -1<cr>

nnoremap <leader>s :CleverSplit<cr>

" }}}
" {{{ tab zoom+nav

nnoremap <silent> <leader>zi :tab split<cr>
nnoremap <silent> <leader>zo :tab close<cr>
nnoremap <silent> <leader>N :tabnext<cr>
nnoremap <silent> <leader>P :tabprev<cr>

" }}}
" {{{ terminal splits

command! -nargs=* T split | terminal <args>
command! -nargs=* VT vsplit | terminal <args>

" }}}
" {{{ telescope

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fc <cmd>Telescope colorscheme<cr>

" }}}
" {{{ trim trailing spaces

nnoremap <leader><leader><leader> :%s/\s\+$//e<cr>

" }}}
" {{{ ultisnips

nnoremap <silent> <leader>SSS :call UltiSnips#RefreshSnippets()<cr>:echo 'ultisnips refreshed'<cr>

" }}}
" {{{ vimrc

if has("nvim")
  nnoremap <silent> <leader>R :source ~/.config/nvim/init.vim<cr>
  nnoremap <silent> <leader>rr :e ~/.config/nvim/init.vim<cr>
else
  nnoremap <silent> <leader>R :source ~/.vimrc<cr>
  nnoremap <silent> <leader>rr :e ~/.vimrc<cr>
endif

" }}}
" {{{ visual-split.vim

xmap <leader>ss <Plug>(Visual-Split-VSSplit)
xmap <leader>sa <Plug>(Visual-Split-VSSplitAbove)
xmap <leader>sb <Plug>(Visual-Split-VSSplitBelow)

nmap <leader>ss <Plug>(Visual-Split-Split)
nmap <leader>sa <Plug>(Visual-Split-SplitAbove)
nmap <leader>sb <Plug>(Visual-Split-SplitBelow)

" }}}
