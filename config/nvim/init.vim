" f3rno64's neovim config
" Put together with love.
"
" https://github.com/f3rno64/dotfiles/config/nvim/init.vim

" {{{ 1. globals

let s:xf_plugin_path = $HOME . '/.nvim-plugins'

" }}}
" {{{ 2. terminal setup

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

if !has('gui_running')
  let &t_SI = "\<Esc>[3 q"
  let &t_SR = "\<Esc>[5 q"
  let &t_EI = "\<Esc>[1 q"
endif

" }}}
" {{{ 3. plugins

" {{{ loading

" {{{

call plug#begin(s:xf_plugin_path)

" }}}
" {{{ script libraries

Plug 'google/vim-maktaba'
Plug 'xolox/vim-misc'
Plug 'godlygeek/tabular'
Plug 'nvim-lua/plenary.nvim'

" }}}
" {{{ syntax/languages

" {{{ json/javascript/typescript

Plug 'yuezk/vim-js'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'elzr/vim-json'
Plug 'leafgarland/typescript-vim'

Plug 'othree/javascript-libraries-syntax.vim'
Plug 'othree/es.next.syntax.vim'

" }}}

Plug 'mustache/vim-mustache-handlebars'
Plug 'digitaltoad/vim-pug'
Plug 'a5ob7r/shellcheckrc.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'mboughaba/i3config.vim'
Plug 'moll/vim-node'
Plug 'gisphm/vim-gitignore'
Plug 'andyk/vim-liquid'
Plug 'jparise/vim-graphql'

" }}}
" {{{ fzf

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'zackhsi/fzf-tags'

" }}}
" {{{ lsp

Plug 'neovim/nvim-lspconfig'

" }}}
" {{{ copilot

Plug 'zbirenbaum/copilot.lua'

" }}}
" {{{ cmp

Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'
Plug 'zbirenbaum/copilot-cmp'

" }}}
" {{{ snipppets

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" }}}
" {{{ general

Plug 'folke/zen-mode.nvim'
Plug 'soywod/quicklist.vim'
Plug 'tpope/vim-eunuch'
Plug 'romainl/vim-qlist'
Plug 'thaerkh/vim-workspace'
Plug 'rhysd/clever-split.vim'
Plug 'Shougo/neco-vim'
" Plug 'neoclide/coc-neco'
" Plug 'neoclide/coc.nvim', { 'branch': 'release', 'do': 'yarn set version 2.4.0 && yarn install --immutable'}
" Plug 'declancm/cinnamon.nvim' " smooth movements/scrolling
Plug 'tpope/vim-repeat'
Plug 'ggandor/leap.nvim'
Plug 'dense-analysis/ale'
Plug 'vim-scripts/ZoomWin'
Plug 'markonm/traces.vim' " live search/sub preview
Plug 'schickling/vim-bufonly'
Plug 'tpope/vim-commentary' " fast commenting
Plug 'Raimondi/delimitMate' " quote/etc autocomplete
Plug 'wincent/terminus' " enhanced terminal integration
Plug 'ntpeters/vim-better-whitespace'
Plug 'mhinz/vim-grepper', { 'on': ['Grepper', '<plug>(GrepperOperator)'] }
Plug 'michaeljsmith/vim-indent-object' " indent-level text object
Plug 'machakann/vim-highlightedyank'
Plug 'unblevable/quick-scope' " f jump highlights
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-eunuch' " shell command helpers
Plug 'fcpg/vim-shore' " mv to 1st non-blank char w/ j/k
Plug 'danro/rename.vim'
Plug 'Lenovsky/nuake'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
Plug 'valloric/MatchTagAlways'

" }}}
" {{{ visual

" Plug 'junegunn/goyo.vim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'
Plug 'jbgutierrez/vim-better-comments'
Plug 'beauwilliams/focus.nvim'

" }}}
" {{{ git integration

Plug 'tanvirtin/vgit.nvim'
Plug 'airblade/vim-gitgutter'
Plug 'rhysd/committia.vim' " better git commit layout
Plug 'int3/vim-extradite' " git log

" }}}
" {{{ colorschemes

" {{{ light

Plug 'reedes/vim-colors-pencil'
Plug 'aonemd/kuroi.vim'
Plug 'vim-scripts/summerfruit256.vim'
Plug 'habamax/vim-colors-defminus'
Plug 'notpratheek/vim-sol'
Plug 'vim-scripts/mayansmoke'
Plug 'kamwitsta/flatwhite-vim'

" }}}
" {{{ dark

Plug 'mangeshrex/uwu.vim'
Plug 'fenetikm/falcon'
Plug 'luisiacc/gruvbox-baby', {'branch': 'main'}
Plug 'mrjones2014/lighthaus.nvim'
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
Plug 'ayu-theme/ayu-vim'
Plug 'toupeira/vim-desertink'
Plug 'fcpg/vim-farout'
Plug 'fcpg/vim-fahrenheit'
Plug 'bluz71/vim-moonfly-colors'
Plug 'romainl/Apprentice'
Plug 'AlessandroYorba/Alduin'
" Plug 'djjcast/mirodark'
" Plug 'ajmwagar/vim-deus'
Plug 'nanotech/jellybeans.vim'
" Plug 'yuttie/hydrangea-vim'
" Plug 'cocopon/iceberg.vim'
" Plug 'itchyny/landscape.vim'
" Plug 'sstallion/vim-wtf'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'AlessandroYorba/Sierra'
Plug 'srcery-colors/srcery-vim'
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

Plug 'sainnhe/everforest'
Plug 'ellisonleao/gruvbox.nvim'
Plug 'rose-pine/neovim'
Plug 'EdenEast/nightfox.nvim'
Plug 'rakr/vim-two-firewatch'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'chriskempson/base16-vim'
Plug 'sonph/onehalf', { 'rtp': 'vim/' }
Plug 'NLKNguyen/papercolor-theme'
Plug 'rakr/vim-one'
Plug 'severij/vadelma'
Plug 'iKarith/tigrana'
Plug 'sainnhe/sonokai'
Plug 'https://gitlab.com/protesilaos/tempus-themes-vim.git'
Plug 'junegunn/seoul256.vim'
Plug 'noahfrederick/vim-hemisu'
Plug 'jan-warchol/selenized', { 'rtp': 'editors/vim' }
Plug 'andbar-ru/vim-unicon'
Plug 'wimstefan/vim-artesanal'
Plug 'overcache/NeoSolarized'

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
let g:ale_sign_column_always = 1
let g:ale_open_list = 0
let g:ale_disable_lsp = 1

" }}}
" {{{ coc

" let g:coc#snippet#next = '<c-j>'
" let g:coc#snippet#prev = '<c-k>'

" let g:coc#node#path = $HOME . '.nvm/versions/node/v17.8.0/bin/node'
" let g:coc#node#args = ['--max-old-space-size=16384', '--no-warnings']

" }}}
" {{{ cinnamon.nvim

" lua << EOF

" require('cinnamon').setup {
"   extra_keymaps = true,
"   override_keymaps = true,
"   max_length = 500,
"   scroll_limit = 80,
" }

" EOF

" }}}
" {{{ focus

lua require('focus').setup()

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
  let s:preview_path = s:xf_plugin_path . '/fzf.vim/bin/preview.sh {}'
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

" let g:goyo_height = '80%'
" let g:goyo_width = '60%'

" func! s:goyo_enter()
"   set noshowmode
"   set noshowcmd
"   set nonumber

"   " let b:coc_suggest_disable = 1 " popup 'invisible' but hides content
" endfunc

" func! s:goyo_leave()
"   set showmode
"   set showcmd
"   set number
"   " let b:coc_suggest_disable = 0

"   " Workaround for color scheme issue
"   " TODO: Update w/ dynamic config path
"   if has('nvim')
"     silent! source $HOME/.config/nvim/init.vim
"   else
"     silent! source $HOME/.vimrc
"   endif
" endfunc

" autocmd! User GoyoEnter nested call <SID>goyo_enter()
" autocmd! User GoyoLeave nested call <SID>goyo_leave()

" }}}
" {{{ javascript-libraries-syntax.vim

let g:used_javascript_libs = 'underscore,react,chai,handlebars'

" }}}
" {{{ leap

lua require('leap').set_default_keymaps()

" }}}
" {{{ copilot

lua << EOF

require("copilot").setup({
  copilot_node_command = vim.fn.expand("$HOME") .. "/.nvm/versions/node/v17.8.0/bin/node"
})

EOF

" }}}
" {{{ cmp

set completeopt=menu,menuone,noselect

lua << EOF

require("copilot_cmp").setup()

local cmp = require'cmp'

cmp.setup({
  snippet = {
    expand = function(args)
      vim.fn["UltiSnips#Anon"](args.body)
    end,
  },
  window = {
    -- completion = cmp.config.window.bordered(),
    -- documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }),
  sources = cmp.config.sources({
    { name = "copilot", group_index = 2 },
    { name = 'nvim_lsp', group_index = 2 },
    { name = 'ultisnips', group_index = 2 },
  }, {
    { name = 'buffer' },
  })
})

cmp.setup.cmdline({ '/', '?' }, {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  }
})

cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})

EOF

" }}}
" {{{ lsp

lua << EOF

-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  vim.keymap.set('n', '<space>f', vim.lsp.buf.formatting, bufopts)
end

local lsp_flags = {
  debounce_text_changes = 150,
}

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

require('lspconfig')['tsserver'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
}

EOF

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
" {{{ vgit

lua << EOF
require('vgit').setup()
EOF

" }}}
" {{{ vim-better-comments

let g:bettercomments_included = ['javascript', 'js', 'go', 'ruby', 'python']

" }}}
" {{{ vim-better-whitespace

let g:better_whitespace_enabled = 1

" }}}
" {{{ vim-jsx-pretty

let g:vim_jsx_pretty_colorful_config = 1

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
" {{{ vim-workspace

let g:workspace_autocreate = 1
let g:workspace_create_new_tabs = 0
let g:workspace_session_disable_on_args = 1
let g:workspace_session_directory = $HOME . '/.config/nvim/sessions/'
let g:workspace_undodir = $HOME . '/.config/nvim/undodir'
let g:workspace_persist_undo_history = 1
let g_workspace_autosave_untrailspaces = 0
let g_workspace_autosave_untrailtabs = 0
let g:workspace_autosave = 0

" }}}
" {{{ zen-mode

lua << EOF

require("zen-mode").setup {
  window = {
    backdrop = 0.95, -- shade the backdrop of the Zen window. Set to 1 to keep the same as Normal
    -- height and width can be:
    -- * an absolute number of cells when > 1
    -- * a percentage of the width / height of the editor when <= 1
    -- * a function that returns the width or the height
    width = 120, -- width of the Zen window
    height = 1, -- height of the Zen window
    options = {
      -- signcolumn = "no",
      -- number = false,
      -- relativenumber = false,
      -- cursorline = true,
      -- cursorcolumn = false,
      -- foldcolumn = "0",
      -- list = true,
    },
  },
  plugins = {
    options = {
      enabled = true,
      ruler = true,
      showcmd = false,
    },
    twilight = { enabled = true },
    gitsigns = { enabled = false }
  }
}

EOF

" }}}

" }}}

" }}}
" {{{ 4. configuration

" {{{ statusline

func! StatuslineALE() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors

  if l:counts.total == 0
    return 'OK'
  endif

  return printf('%dW %dE', all_non_errors, all_errors)
endfunc

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
" set statusline+=\ " padding
" set statusline+=%{coc#status()}
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
" {{{ netrw

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
set signcolumn=yes:2
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

" Enabled embedded lua highlighting
let g:vimsyn_embed = 'l'

" }}}
" {{{ folding

set foldmethod=marker
set foldcolumn=1
set foldlevel=1

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

" autosave
autocmd InsertLeave,TextChanged * update

" }}}

" }}}
" {{{ 5. colorscheme

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
" {{{ rosepine

lua << EOF
require('rose-pine').setup({
	---@usage 'main'|'moon'
	dark_variant = 'main',
	bold_vert_split = false,
	dim_nc_background = false,
	disable_background = false,
	disable_float_background = false,
	disable_italics = false,
	---@usage string hex value or named color from rosepinetheme.com/palette
	groups = {
		background = 'base',
		panel = 'surface',
		border = 'highlight_med',
		comment = 'muted',
		link = 'iris',
		punctuation = 'subtle',

		error = 'love',
		hint = 'iris',
		info = 'foam',
		warn = 'gold',

		headings = {
			h1 = 'iris',
			h2 = 'foam',
			h3 = 'rose',
			h4 = 'gold',
			h5 = 'pine',
			h6 = 'foam',
		}
		-- or set all headings at once
		-- headings = 'subtle'
	}
})
EOF

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

set background=light

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
" rose-pine
" tender
" everforest
" unicon
colorscheme base16-github

" }}}
" {{{ 6. gui

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
" {{{ 7. keybindings

let mapleader = ','

" {{{ fast line movements

nnoremap J 2j
nnoremap K 2k

" }}}
" {{{ ctrl+backspace delete word

imap <C-BS> <C-W>
noremap! <C-BS> <C-w>
noremap! <C-h> <C-w>

" }}}
" {{{ help

nnoremap <leader><S-h> :execute 'vert help ' . expand('<cword>')<cr>

" }}}
" {{{ fast quit

nnoremap <silent> <leader>q :qa<cr>
nnoremap <silent> <leader>Q :q!<cr>

" }}}
" {{{ folds

func! s:xf_folds_toggle() abort
  if &foldlevel > 0
    call <SID>xf_folds_collapse()
  else
    call <SID>xf_folds_expand()
  endif
endfunc

func! s:xf_folds_collapse() abort
  let &foldlevel = 0
endfunc

func! s:xf_folds_expand() abort
  let &foldlevel = 99
endfunc

" Toggle fold
nnoremap <silent> <leader><space> @=(foldlevel('.')?'za':"\<space>")<CR>

" Toggle all folds
nnoremap <silent> fff :call <SID>xf_folds_toggle()<CR>

" }}}
" {{{ search highlights

nnoremap <leader>hl :nohl<CR>

" }}}
" {{{ splits

nnoremap <up> :resize -1<CR>
nnoremap <down> :resize +1<CR>
nnoremap <left> :vert resize +1<CR>
nnoremap <right> :vert resize -1<CR>

nnoremap <leader>cs :CleverSplit<CR>
nnoremap <leader>ch :CleverHSplit<CR>
nnoremap <leader>cv :CleverVSplit<CR>

" }}}
" {{{ netrw

nnoremap <leader>e :Lexplore<cr>

" }}}
" {{{ buffers

nnoremap <leader>bo :BufOnly<CR>
nnoremap <leader>bn :BufferNext<CR>
nnoremap <leader>bN :BufferPrevious<CR>

" }}}
" {{{ terminal splits

command! -nargs=* T split | terminal <args>
command! -nargs=* VT vsplit | terminal <args>

" }}}
" {{{ terminal exit shortcut

tnoremap <Esc> <C-\><C-n>

" }}}
" {{{ trim trailing spaces

nnoremap <leader><leader><leader> :%s/\s\+$//e<cr>

" }}}

" {{{ ale

nmap <silent> <leader>aj :ALENext<cr>
nmap <silent> <leader>ak :ALEPrevious<cr>

" }}}
" {{{ coc

" Helper to handle complex tab behavior, allowing for elegant snippet expansion

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
" inoremap <silent><expr> <TAB>
"       \ coc#pum#visible() ? coc#pum#next(1) :
"       \ CheckBackspace() ? "\<Tab>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
" inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
"                               \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" function! CheckBackspace() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction

" Use <c-space> to trigger completion.
" if has('nvim')
"   inoremap <silent><expr> <c-space> coc#refresh()
" else
"   inoremap <silent><expr> <c-@> coc#refresh()
" endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
" nmap <silent> [g <Plug>(coc-diagnostic-prev)
" nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
" nmap <silent> gd <Plug>(coc-definition)
" nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gi <Plug>(coc-implementation)
" nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
" nnoremap <silent> K :call ShowDocumentation()<CR>

" function! ShowDocumentation()
"   if CocAction('hasProvider', 'hover')
"     call CocActionAsync('doHover')
"   else
"     call feedkeys('K', 'in')
"   endif
" endfunction

" Highlight the symbol and its references when holding the cursor.
" autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
" nmap <leader>rn <Plug>(coc-rename)

" Mappings for CoCList
" Show all diagnostics.
" nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
" nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
" nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
" nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
" nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
" nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
" nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
" nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

" }}}
" {{{ fzf

nnoremap <C-p> :FZFShowFileExplorer<cr>
nnoremap <leader>ZC :FZFCommands<cr>
nnoremap <leader>ZB :FZFTags<cr>

" {{{ search open buffers

function! s:buflist()
  redir => ls
  silent ls
  redir END
  return split(ls, '\n')
endfunction

function! s:bufopen(e)
  execute 'buffer' matchstr(a:e, '^[ 0-9]*')
endfunction

nnoremap <silent> <Leader><Enter> :call fzf#run({
\   'source':  reverse(<sid>buflist()),
\   'sink':    function('<sid>bufopen'),
\   'options': '+m',
\   'down':    len(<sid>buflist()) + 2
\ })<CR>

" }}}
" {{{ search tags

function! s:tags_sink(line)
  let parts = split(a:line, '\t\zs')
  let excmd = matchstr(parts[2:], '^.*\ze;"\t')
  execute 'silent e' parts[1][:-2]
  let [magic, &magic] = [&magic, 0]
  execute excmd
  let &magic = magic
endfunction

function! s:tags()
  call fzf#run({
  \ 'source':  'cat '.join(map(tagfiles(), 'fnamemodify(v:val, ":S")')).
  \            '| grep -v -a ^!',
  \ 'options': '+m -d "\t" --with-nth 1,4.. -n 1 --tiebreak=index',
  \ 'down':    '40%',
  \ 'sink':    function('s:tags_sink')})
endfunction

command! Tags call s:tags()

" }}}

" }}}
" {{{ grepper

nnoremap <silent> <leader>G :Grepper<cr>
nnoremap <silent> <leader>C :Grepper-cword<cr>

" }}}
" {{{ goyo

" nnoremap <silent> <leader>g :Goyo<cr>

" }}}
" {{{ quicklist

nmap <a-l> <plug>(quicklist-toggle-lc) " Toggle the loclist
nmap <a-c> <plug>(quicklist-toggle-qf) " Toggle the quickfix
nmap <c-a> <plug>(quicklist-prev-item) " Select the previous loclist item (or the previous quickfix one if empty)
nmap <c-l> <plug>(quicklist-next-item) " Select the next loclist item (or the next quickfix one if empty)

" }}}
" {{{ nuake

nnoremap <leader>T :Nuake<cr>
inoremap <leader>T <C-\><C-n>:Nuake<cr>
tnoremap <leader>T <C-\><C-n>:Nuake<cr>

" }}}
" {{{ vim-workspace

nnoremap <leader>W :ToggleWorkspace<CR>

" }}}

" }}}
