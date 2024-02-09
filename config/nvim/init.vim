set encoding=utf-8
scriptencoding utf-8

" f3rno64's personal vim/neovim config
"
" https://github.com/f3rno64/dotfiles

" {{{ plugin loading

" {{{ plugin directory resolution

if has('nvim')
  let s:plugin_dir_path = $HOME . '/.nvim-plugins'
else
  let s:plugin_dir_path = $HOME . '/.vim-plugins'
endif

" }}}

call plug#begin(s:plugin_dir_path)

" {{{ libs

Plug 'MunifTanjim/nui.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'tpope/vim-repeat'
Plug 'google/vim-maktaba'
Plug 'Shougo/vimproc.vim', { 'do' : 'make' }

" }}}
" {{{ telescope

Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.x' }
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
Plug 'nvim-telescope/telescope-ui-select.nvim'
Plug 'aznhe21/actions-preview.nvim'

" }}}
" {{{ treesitter

Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
" Plug 'yioneko/nvim-yati', { 'tag': '*' }
Plug 'm-demare/hlargs.nvim'
" Plug 'p00f/nvim-ts-rainbow'
Plug 'windwp/nvim-ts-autotag'
Plug 'RRethy/nvim-treesitter-textsubjects'

" }}}
" {{{ nvim-tree

Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-tree/nvim-tree.lua'

" }}}
" {{{ lsp

Plug 'neovim/nvim-lspconfig'
Plug 'reksar/nvim-lsp-python'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'RubixDev/mason-update-all'
Plug 'dnlhc/glance.nvim'
Plug 'pwntester/nvim-lsp'
Plug 'jose-elias-alvarez/null-ls.nvim'

" }}}
" {{{ cmp

Plug 'petertriho/cmp-git'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'f3fora/cmp-spell'
Plug 'hrsh7th/cmp-emoji'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'
Plug 'rasulomaroff/cmp-bufname'
Plug 'amarakon/nvim-cmp-buffer-lines'
Plug 'hrsh7th/cmp-nvim-lsp-document-symbol'
Plug 'hrsh7th/cmp-nvim-lsp-signature-help'
Plug 'JMarkin/cmp-diag-codes'
Plug 'tzachar/cmp-tabnine', { 'do': './install.sh' }
Plug 'jcha0713/cmp-tw2css'
Plug 'hrsh7th/nvim-cmp'

" }}}
" {{{ snipppets

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" }}}
" {{{ tabline

" Plug 'romgrk/barbar.nvim'
Plug 'nanozuki/tabby.nvim'

" }}}
" {{{ javascript

Plug 'yuezk/vim-js'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'elzr/vim-json'
Plug 'leafgarland/typescript-vim'
Plug 'jason0x43/vim-js-indent'

Plug 'othree/javascript-libraries-syntax.vim'
Plug 'othree/es.next.syntax.vim'
Plug 'Quramy/vim-js-pretty-template'

" }}}
" {{{ markdown

Plug 'SidOfc/mkdx'
Plug 'tadmccorkle/markdown.nvim'
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
Plug 'tpope/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }
Plug 'wallpants/github-preview.nvim'

" }}}
" {{{ tags

Plug 'ludovicchabant/vim-gutentags'
Plug 'skywind3000/gutentags_plus'

" }}}
" {{{ wiki

Plug 'powerman/vim-plugin-AnsiEsc', { 'on': 'AnsiEsc' }
Plug 'rbgrouleff/bclose.vim'
Plug 'mattn/calendar-vim'
Plug 'vimwiki/vimwiki', { 'branch': 'dev' }
Plug 'f3rno/vimwiki-footnotes'

" }}}
" {{{ other

" let g:polyglot_disabled = ['markdown']

Plug 'james1236/backseat.nvim'
Plug 'nvim-lua/lsp-status.nvim'
Plug 'Exafunction/codeium.vim', { 'branch': 'main' }
Plug 'piersolenski/wtf.nvim'
Plug 'codota/tabnine-nvim', { 'do': './dl_binaries.sh' }
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/vim-emoji'
" Plug 'sheerun/vim-polyglot'
Plug 'sindrets/diffview.nvim'
Plug 'jghauser/follow-md-links.nvim'
Plug 'David-Kunz/gen.nvim', {'branch': 'main'}
Plug 'MattesGroeger/vim-bookmarks'
Plug 'tom-anders/telescope-vim-bookmarks.nvim'
Plug 'rhysd/accelerated-jk'
Plug 'dmmulroy/tsc.nvim'
" Plug 'rcarriga/nvim-notify'
Plug 'rafamadriz/friendly-snippets'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary' }
Plug 'Pocco81/true-zen.nvim'
" Plug 'nvim-focus/focus.nvim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'christoomey/vim-sort-motion'
Plug 'jbgutierrez/vim-better-comments'
Plug 'fisadev/vim-isort'
Plug 'voldikss/vim-floaterm'
Plug 'vim-test/vim-test'
Plug 'David-Kunz/jester'
Plug 'AndrewRadev/switch.vim'
Plug 'joaohkfaria/vim-jest-snippets'
" Plug 'MysticalDevil/inlay-hints.nvim'
" Plug 'boltlessengineer/smart-tab.nvim'
Plug 'lcheylus/overlength.nvim'
Plug 'smoka7/hop.nvim', { 'branch': 'master' }
Plug 'anuvyklack/keymap-amend.nvim'
Plug 'okuuva/auto-save.nvim'
Plug 'declancm/cinnamon.nvim'
Plug 'abecodes/tabout.nvim'
Plug 'nguyenvukhang/nvim-toggler'
Plug 'linrongbin16/lsp-progress.nvim'
Plug 'roobert/search-replace.nvim'
Plug 'ray-x/lsp_signature.nvim'
Plug 'axelvc/template-string.nvim'
Plug 'sontungexpt/buffer-closer'
Plug 'jamestthompson3/sort-import.nvim'
Plug 'sbdchd/neoformat'
Plug 'github/copilot.vim'
Plug 'tomiis4/hypersonic.nvim'
Plug 'mvllow/modes.nvim'
Plug 'preservim/vim-wheel'
Plug 'vim-scripts/ScrollColors'
Plug 'preservim/vim-lexical'
Plug 'preservim/vim-thematic'
Plug 'ralismark/opsort.vim'
Plug 'dnlhc/glance.nvim'
Plug 'wincent/terminus'
Plug 'stevearc/dressing.nvim'
Plug 'jghauser/mkdir.nvim'
Plug 'tpope/vim-eunuch'
" Plug 'beauwilliams/focus.nvim'
Plug 'jinh0/eyeliner.nvim'
Plug 'smitajit/bufutils.vim'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'wakatime/vim-wakatime'
Plug 'natecraddock/sessions.nvim'
Plug 'natecraddock/workspaces.nvim'
Plug 'numtostr/BufOnly.nvim', { 'on': 'BufOnly' }
Plug 'rhysd/clever-split.vim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'hashivim/vim-terraform'
Plug 'f3rno64/vim-grepper', { 'on': ['Grepper', '<plug>(GrepperOperator)'] }
Plug 'folke/trouble.nvim'
Plug 'weilbith/nvim-code-action-menu', { 'on': 'CodeActionMenu' }
Plug 'kosayoda/nvim-lightbulb'
Plug 'antoinemadec/FixCursorHold.nvim'
Plug 'ggandor/leap.nvim'
Plug 'tpope/vim-speeddating'
Plug 'lewis6991/gitsigns.nvim'
Plug 'numToStr/Comment.nvim'
Plug 'RRethy/vim-illuminate'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'kevinhwang91/nvim-bqf'
Plug 'karb94/neoscroll.nvim'
Plug 'onsails/lspkind.nvim'
Plug 'kylechui/nvim-surround'
Plug 'folke/todo-comments.nvim'
Plug 'lewis6991/foldsigns.nvim'
Plug 'booperlv/nvim-gomove'
Plug 'windwp/nvim-autopairs'
Plug 'nvim-zh/colorful-winsep.nvim'
Plug 'kwkarlwang/bufresize.nvim'
Plug 'mrjones2014/smart-splits.nvim'
" Plug 'folke/twilight.nvim'
Plug 'folke/zen-mode.nvim'
" Plug 'glepnir/dashboard-nvim'
Plug 'ojroques/nvim-bufdel'
Plug 'smjonas/inc-rename.nvim'
Plug 'numToStr/FTerm.nvim'
Plug 'winston0410/cmd-parser.nvim'
Plug 'winston0410/range-highlight.nvim'
" Plug 'mawkler/modicator.nvim'
Plug 'RRethy/vim-illuminate'
Plug 'm4xshen/smartcolumn.nvim'
Plug 'mhinz/vim-signify'

function! UpdateRemotePlugins(...)
  " Needed to refresh runtime files
  let &runtimepath=&runtimepath
  UpdateRemotePlugins
endfunction

Plug 'gelguy/wilder.nvim', { 'do': function('UpdateRemotePlugins') }

" }}}
" {{{ colorschemes

Plug 'sam4llis/nvim-tundra'
Plug 'yasukotelin/shirotelin'
Plug 'cpea2506/one_monokai.nvim'
Plug 'kamwitsta/flatwhite-vim'
Plug 'Yagua/nebulous.nvim'
Plug 'rafamadriz/neon'
Plug 'yashguptaz/calvera-dark.nvim'
Plug 'cseelus/vim-colors-lucid'
Plug 'dasupradyumna/midnight.nvim'
Plug 'jsit/toast.vim'
Plug 'luisiacc/gruvbox-baby', {'branch': 'main'}
Plug 'Alexis12119/nightly.nvim'
Plug 'lewpoly/sherbet.nvim'
Plug 'jacoborus/tender.vim'
Plug 'marko-cerovac/material.nvim'
Plug 'wadackel/vim-dogrun'
Plug 'RRethy/nvim-base16'
Plug 'rebelot/kanagawa.nvim'
Plug 'EdenEast/nightfox.nvim'
Plug 'nyoom-engineering/oxocarbon.nvim'
Plug 'levelone/tequila-sunrise.vim'
Plug 'Abstract-IDE/Abstract-cs'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'glepnir/zephyr-nvim'
Plug 'fenetikm/falcon'
Plug 'savq/melange-nvim'
Plug 'ray-x/aurora'
Plug 'Th3Whit3Wolf/one-nvim'
Plug 'hoprr/calvera-dark.nvim'
Plug 'nxvu699134/vn-night.nvim'
Plug 'Everblush/nvim'
Plug 'sonph/onehalf', { 'rtp': 'vim/' }
Plug 'NLKNguyen/papercolor-theme'
Plug 'lighthaus-theme/vim-lighthaus'
Plug 'daschw/leaf.nvim'
Plug 'schickele/vim-fruchtig'
Plug 'toupeira/vim-desertink'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'https://gitlab.com/yorickpeterse/vim-paper.git'
Plug 'yorik1984/newpaper.nvim'
Plug 'https://gitlab.com/protesilaos/tempus-themes-vim.git'

" }}}

call plug#end()

" }}}
" {{{ functions

" {{{ s:GetUserSnippetsDirPath

function s:GetUserSnippetsDirPath()
  if empty($XF_SRC_DIR)
    return ''
  endif

  let l:path = $XF_SRC_DIR . '/github/' . $USER . '/vim-snippets'

  if !maktaba#path#Exists(l:path)
    return ''
  else
    return l:path
  endif
endfunction

" }}}
" {{{ s:GetUserSnippetFilePath

function s:GetUserSnippetFilePath(filetype)
  let l:snippets_path = s:GetUserSnippetsDirPath()

  if empty(l:snippets_path)
    return ''
  else
    let l:ft_snippets_path = l:snippets_path . '/ultisnips/' . a:filetype . '.snippets'

    if maktaba#path#Exists(l:ft_snippets_path)
      return l:ft_snippets_path
    else
      return ''
    endif
  endif
endfunction

" }}}
" {{{ GetCommentString

function GetCommentString()
  let l:comment_string_parts = split(&commentstring, '%s')

  if len(l:comment_string_parts) == 0
    return ''
  else
    return l:comment_string_parts[0]
  endif
endfunction

" }}}

" }}}
" {{{ general settings

" {{{ leader key

let mapleader=','

" }}}
" {{{ disable netrw, as we use nvim-tree instead

let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1

" }}}
" {{{ config

syntax enable

filetype plugin on
filetype indent on

set maxmempattern=5000

set nospell
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

set timeout           " for mappings
set timeoutlen=300    " default value
set ttimeout          " for key codes
set ttimeoutlen=10    " unnoticeable small value

set updatetime=100
set number
set nojoinspaces
set splitbelow
set showmatch
set incsearch
set hlsearch
set colorcolumn=80
set cursorline
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
set textwidth=79 " word wrap
set equalalways
set wildignore+=*node_modules/**
set noswapfile
set nobackup
set nowritebackup
set concealcursor=nc
set conceallevel=0
set termguicolors
set mouse+=a
set splitkeep=screen

" }}}
" {{{ vim-thematic

let g:thematic#defaults = {
\   'background': 'dark',
\   'laststatus': 2,
\   'ruler': 1
\ }

let g:thematic#themes = {
\   'lucid': {
\     'colorscheme': 'lucid',
\     'background': 'dark'
\   },
\
\   'base16-ayu-mirage': {
\     'colorscheme': 'base16-ayu-mirage',
\     'background': 'dark'
\   },
\
\   'base16-summercamp': {
\     'colorscheme': 'base16-summercamp',
\     'background': 'dark'
\   },
\
\   'base16-tokyodark-terminal': {
\     'colorscheme': 'base16-tokyodark-terminal',
\     'background': 'dark'
\   },
\
\   'slate': {
\     'colorscheme': 'slate',
\     'background': 'dark'
\   },
\
\   'murphy': {
\     'colorscheme': 'murphy',
\     'background': 'dark'
\   },
\
\   'gruvbox-baby': {
\     'colorscheme': 'gruvbox-baby',
\     'background': 'dark'
\   },
\
\   'nightly': {
\     'colorscheme': 'nightly',
\     'background': 'dark'
\   },
\
\   'tender': {
\     'colorscheme': 'tender',
\     'background': 'dark'
\   },
\
\   'sherbet': {
\     'colorscheme': 'sherbet',
\     'background': 'dark'
\   },
\
\   'dogrun': {
\     'colorscheme': 'dogrun',
\     'background': 'dark'
\   },
\
\   'tempus_future': {
\     'colorscheme': 'tempus_future',
\     'background': 'dark'
\   },
\
\   'tempus_night': {
\     'colorscheme': 'tempus_night',
\     'background': 'dark'
\   },
\
\   'tempus_warp': {
\     'colorscheme': 'tempus_warp',
\     'background': 'dark'
\   },
\
\   'desertink': {
\     'colorscheme': 'desertink',
\     'background': 'dark'
\   },
\
\   'nebulous': {
\     'colorscheme': 'nebulous',
\     'background': 'dark'
\   },
\
\   'base16-material-palenight': {
\     'colorscheme': 'base16-material-palenight',
\     'background': 'dark'
\   },
\
\   'base16-horizon-terminal-dark': {
\     'colorscheme': 'base16-horizon-terminal-dark',
\     'background': 'dark'
\   },
\
\   'base16-irblack': {
\     'colorscheme': 'base16-irblack',
\     'background': 'dark'
\   },
\
\   'tequila-sunrise': {
\     'colorscheme': 'tequila-sunrise',
\     'background': 'dark'
\   },
\
\   'kanagawa': {
\     'colorscheme': 'kanagawa',
\     'background': 'dark'
\   },
\
\   'material': {
\     'colorscheme': 'material',
\     'background': 'dark'
\   },
\
\   'nightfox': {
\     'colorscheme': 'nightfox',
\     'background': 'dark'
\   },
\
\   'oxocarbon': {
\     'colorscheme': 'oxocarbon',
\     'background': 'dark'
\   },
\
\   'base16-gruvbox-dark-medium': {
\     'colorscheme': 'base16-gruvbox-dark-medium',
\     'background': 'dark'
\   },
\
\   'abscs': {
\     'colorscheme': 'abscs',
\     'background': 'dark'
\   },
\
\   'tokyonight-night': {
\     'colorscheme': 'tokyonight-night',
\     'background': 'dark'
\   },
\
\   'zephyr': {
\     'colorscheme': 'zephyr',
\     'background': 'dark'
\   },
\
\   'melange': {
\     'colorscheme': 'melange',
\     'background': 'dark'
\   },
\
\   'aurora': {
\     'colorscheme': 'aurora',
\     'background': 'dark'
\   },
\
\   'one-nvim': {
\     'colorscheme': 'one-nvim',
\     'background': 'dark'
\   },
\
\   'falcon': {
\     'colorscheme': 'falcon',
\     'background': 'dark'
\   },
\
\   'calvera': {
\     'colorscheme': 'calvera',
\     'background': 'dark'
\   },
\
\   'vn-night': {
\     'colorscheme': 'vn-night',
\     'background': 'dark'
\   },
\
\   'everblush': {
\     'colorscheme': 'everblush',
\     'background': 'dark'
\   },
\   'fruchtig': {
\     'colorscheme': 'fruchtig',
\     'background': 'light'
\   },
\
\   'newpaper': {
\     'colorscheme': 'newpaper',
\     'background': 'light'
\   },
\
\   'shirotelin': {
\     'colorscheme': 'shirotelin',
\     'background': 'light'
\   },
\
\   'onehalflight': {
\     'colorscheme': 'onehalflight',
\     'background': 'light'
\   },
\
\   'paper': {
\     'colorscheme': 'paper',
\     'background': 'light'
\   },
\
\   'tempus_day': {
\     'colorscheme': 'tempus_day',
\     'background': 'light'
\   },
\
\   'base16-one-light': {
\     'colorscheme': 'base16-one-light',
\     'background': 'light'
\   },
\
\   'base16-railscasts': {
\     'colorscheme': 'base16-railscasts',
\     'background': 'light'
\   },
\
\   'base16-github': {
\     'colorscheme': 'base16-github',
\     'background': 'light'
\   },
\
\   'base16-mexico-light': {
\     'colorscheme': 'base16-mexico-light',
\     'background': 'light'
\   },
\
\   'base16-still-alive': {
\     'colorscheme': 'base16-still-alive',
\     'background': 'light'
\   },
\
\   'base16-unikitty-light': {
\     'colorscheme': 'base16-unikitty-light',
\     'background': 'light'
\   },
\ }

nnoremap tn :ThematicNext<cr>
nnoremap tp :ThematicPrevious<cr>
nnoremap tr :ThematicRandom<cr>
nnoremap tnp :Thematic newpaper<cr>
nnoremap tir :Thematic base16-irblack<cr>
nnoremap tam :Thematic material<cr>
nnoremap tka :Thematic kanagawa<cr>

" <c-l> to clear the highlight, as well as redraw the screen
noremap <silent> <C-l> :<C-u>nohlsearch<cr><C-l>
inoremap <silent> <C-l> <C-o>:nohlsearch<cr>

" }}}
" {{{ folding

set foldmethod=marker
set foldcolumn=1
set foldlevel=3

" }}}
" {{{ autocommands

augroup TerraformVarFiles
  autocmd!
  autocmd BufNewFile,BufRead *.tfvars.dev setf terraform
  autocmd BufNewFile,BufRead *.tfvars.prod setf terraform
augroup END

augroup editing
  autocmd!
  autocmd InsertLeave * set nopaste
  autocmd BufEnter * set number
  autocmd BufLeave * set nonumber
augroup END

augroup SnippetFoldMethod
  autocmd!
  autocmd FileType snippets setlocal foldmethod=marker
augroup END

" hacky fix for syntax highlighting in large files
augroup syntax_fix
  autocmd!
  autocmd WinEnter,Filetype * syntax sync fromstart
augroup END

augroup SetVimSyntax
  autocmd!
  autocmd BufNewFile,BufRead *.vim setf vim
  autocmd BufNewFile,BufRead *.nvim setf vim
augroup END

augroup SetI3ConfigSyntax
  autocmd BufNewFile,BufRead */i3/config setf i3config
  autocmd BufNewFile,BufRead */sway/config setf i3config
augroup END

augroup WriteOnInsertLeave
  autocmd!
  autocmd InsertLeave * write
augroup END

" }}}
" {{{ colorscheme configs

let g:falcon_background = 0
let g:falcon_inactive = 1

let g:calvera_italic_comments = 1
let g:calvera_italic_keywords = 1
let g:calvera_italic_functions = 1
let g:calvera_contrast = 1

let g:material_style = 'deep ocean'
" let g:material_style = 'lighter'

" }}}
" {{{ material setup

lua << EOF

require('material').setup({
  contrast = {
    terminal = true,
    sidebars = true,
    floating_windows = true,
    cursor_line = true,
    non_current_windows = true
  },

  plugins = {
    'gitsigns',
    'lspsaga',
    'nvim-cmp',
    'nvim-web-devicons',
    'telescope',
    'trouble'
  }
})

EOF

" }}}
" {{{ nightly setup

lua << EOF

require("nightly").setup({
  transparent = false,
  styles = {
    comments = { italic = true },
    functions = { italic = false },
    variables = { italic = false },
    keywords = { italic = false },
  },
  highlights = {},
})

EOF

" }}}
" {{{ calvera

let g:calvera_italic_comments = 1
let g:calvera_italic_keywords = 1
let g:calvera_italic_functions = 1
let g:calvera_contrast = 1

" }}}
" {{{ nebulous

lua << EOF

require("nebulous").setup({
  variant = "midnight",
  disable = {
    background = true,
    endOfBuffer = false,
    terminal_colors = false,
  },
  italic = {
    comments   = false,
    keywords   = true,
    functions  = false,
    variables  = true,
  },
  custom_colors = { -- this table can hold any group of colors with their respective values
    LineNr = { fg = "#5BBBDA", bg = "NONE", style = "NONE" },
    CursorLineNr = { fg = "#E1CD6C", bg = "NONE", style = "NONE" },

    -- it is possible to specify only the element to be changed
    TelescopePreviewBorder = { fg = "#A13413" },
    LspDiagnosticsDefaultError = { bg = "#E11313" },
    TSTagDelimiter = { style = "bold,italic" },
  }
})

local setmap = vim.api.nvim_set_keymap
local options = { silent = true, noremap = true }

setmap("n", "ntc", ":lua require('nebulous.functions').toggle_variant()<CR>", options)
setmap("n", "nrc", ":lua require('nebulous.functions').random_variant()<CR>", options)
-- setmap("n", "<leader>tw", ":lua require('nebulous.functions').set_variant('variant_name')<CR>", options)

EOF

" }}}

" }}}
" {{{ colorscheme

set background=light

" {{{ light colorschemes

" colorscheme fruchtig
" colorscheme shirotelin
" colorscheme onehalflight
" colorscheme paper
" colorscheme tempus_day
colorscheme tempus_totus
" colorscheme base16-one-light
" colorscheme base16-github
" colorscheme base16-mexico-light
" colorscheme base16-still-alive
" colorscheme base16-unikitty-light

" }}}
" {{{ light and dark colorschemes

" colorscheme toast
" colorscheme leaf
" colorscheme PaperColor
" colorscheme catppuccin-latte
" colorscheme newpaper
" colorscheme flatwhite
" colorscheme base16-github
" colorscheme tempus_day

" }}}
" {{{ dark colorschemes

" colorscheme tundra
" colorscheme base16-railscasts
" colorscheme tequila-sunrise
" colorscheme melange
" colorscheme base16-blueish
" colorscheme lucid
" colorscheme base16-ayu-mirage
" colorscheme vn-night
" colorscheme base16-summercamp
" colorscheme base16-tokyodark-terminal
" colorscheme base16-onedark
" colorscheme sherbet
" colorscheme slate
" colorscheme murphy
" colorscheme gruvbox-baby
" colorscheme base16-tokyo-city-dark
" colorscheme nightly
" colorscheme tender
" colorscheme dogrun
" colorscheme tempus_future
" colorscheme tempus_night
" colorscheme tempus_warp
" colorscheme desertink
" colorscheme nebulous
" colorscheme base16-material-palenight
" colorscheme base16-horizon-terminal-dark
" colorscheme base16-irblack
" colorscheme tequila-sunrise
" colorscheme kanagawa
" colorscheme material
" colorscheme nightfox
" colorscheme oxocarbon
" colorscheme base16-gruvbox-dark-medium
" colorscheme abscs
" colorscheme tokyonight-night
" colorscheme zephyr
" colorscheme melange
" colorscheme aurora
" colorscheme one-nvim
" colorscheme falcon
" colorscheme calvera
" colorscheme vn-night
" colorscheme everblush

" }}}

" }}}

" {{{ gui configuration

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
  let &guifont = g:font_name . ' ' . g:font_size
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

let g:font_name = 'JetBrainsMono Nerd Font'
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

  let g:GuiInternalClipboard = 1
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
" {{{ mason

lua require("mason").setup()

" }}}
" {{{ mason-update-all

lua require("mason-update-all").setup()

" }}}
" {{{ null-ls

lua << EOF

local null_ls = require("null-ls")

null_ls.setup({
  debounce = 200,
  sources = {
    null_ls.builtins.diagnostics.actionlint,
    null_ls.builtins.diagnostics.tsc,
    null_ls.builtins.diagnostics.jsonlint,
    null_ls.builtins.diagnostics.markdownlint,
    null_ls.builtins.diagnostics.shellcheck,
    null_ls.builtins.diagnostics.pylint,
    null_ls.builtins.diagnostics.eslint_d,
    null_ls.builtins.diagnostics.mypy,
    -- null_ls.builtins.diagnostics.alex,
    -- null_ls.builtins.diagnostics.codespell,
    null_ls.builtins.diagnostics.commitlint,
    null_ls.builtins.diagnostics.dotenv_linter,
    null_ls.builtins.diagnostics.erb_lint,
    null_ls.builtins.diagnostics.gitlint,
    null_ls.builtins.diagnostics.jshint,
    null_ls.builtins.diagnostics.misspell,
    null_ls.builtins.diagnostics.pycodestyle,
    null_ls.builtins.diagnostics.pydocstyle,
    null_ls.builtins.diagnostics.rubocop,
    null_ls.builtins.diagnostics.shellcheck,
    null_ls.builtins.diagnostics.stylelint,
    null_ls.builtins.diagnostics.stylint,
    null_ls.builtins.diagnostics.tidy,
    null_ls.builtins.diagnostics.todo_comments,
    null_ls.builtins.diagnostics.typos,
    null_ls.builtins.diagnostics.vint,
    null_ls.builtins.diagnostics.yamllint,

    -- null_ls.builtins.completion.spell,
    null_ls.builtins.completion.tags,
    null_ls.builtins.completion.vsnip,

    null_ls.builtins.code_actions.eslint_d,
    null_ls.builtins.code_actions.cspell,
    null_ls.builtins.code_actions.refactoring,
    null_ls.builtins.code_actions.shellcheck,

    null_ls.builtins.formatting.blackd,
    -- null_ls.builtins.formatting.codespell,
    null_ls.builtins.formatting.eslint_d,
    null_ls.builtins.formatting.fixjson,
    null_ls.builtins.formatting.htmlbeautifier,
    null_ls.builtins.formatting.isort,
    null_ls.builtins.formatting.jq,
    null_ls.builtins.formatting.markdownlint,
    null_ls.builtins.formatting.ocdc,
    null_ls.builtins.formatting.prettierd,
    null_ls.builtins.formatting.rubocop,
    null_ls.builtins.formatting.shellharden,
    null_ls.builtins.formatting.shfmt,
    null_ls.builtins.formatting.stylelint,
    null_ls.builtins.formatting.yamlfix,

    -- null_ls.builtins.hover.dictionary,
    null_ls.builtins.hover.printenv
  },
})

EOF

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
" {{{ fast save

nnoremap <silent><leader>SS<CR>

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

" {{{ tabnine-nvim

lua << EOF

require('tabnine').setup({
  disable_auto_comment=true,
  accept_keymap="<C-t>",
  dismiss_keymap = "<C-]>",
  debounce_ms = 800,
  suggestion_color = {gui = "#808080", cterm = 244},
  exclude_filetypes = {"TelescopePrompt", "NvimTree"},
  log_file_path = nil, -- absolute path to Tabnine log file
})

EOF

" }}}

" {{{ lualine

lua << EOF

local wtf = require("wtf")

require("lualine").setup {
  options = {
    icons_enabled = true,
    theme = "auto",
    component_separators = { left = "", right = ""},
    section_separators = { left = "", right = ""},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {"mode"},
    lualine_b = {"branch", "diff", "diagnostics"},
    lualine_c = {
      {
        "filename",
        path = 2
      },
      "require('lsp-progress').progress()"
    },
    lualine_x = {"tabnine", wtf.get_status, "fileformat", "filetype"},
    lualine_y = {"progress"},
    lualine_z = {"location"}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {"filename"},
    lualine_x = {"location"},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}

EOF

" }}}
" {{{ bufutils

nnoremap <leader>zi :BResizeZoom<cr>
nnoremap <leader>zo :BResizeZoom<cr>

" }}}
" {{{ devicons

lua << EOF

require("nvim-web-devicons").setup({
  color_icons = true,
  default = true,
  strict = true
})

EOF

" }}}
" {{{ sessions

lua << EOF

require("sessions").setup({
  events = { "BufEnter" },
  session_filepath = vim.fn.stdpath("data") .. "/sessions",
  absolute = true,
})

EOF

nnoremap <leader>ss <cmd>SessionsSave<cr>
nnoremap <leader>sl <cmd>SessionsLoad<cr>

" }}}
" {{{ workspaces

lua << EOF

require("workspaces").setup({
  path = vim.fn.stdpath("data") .. "/workspaces",
  cd_type = "global",
  sort = true,
  mru_sort = true,
  notify_info = true,
  hooks = {
    add = {},
    remove = {},
    rename = {},
    open_pre = {},
    open = function()
      require("sessions").load(nil, { silent = true })
    end,
  },
})

EOF

nnoremap <leader>wo <cmd>WorkspacesOpen<cr>
nnoremap <leader>wl <cmd>WorkspacesList<cr>

" }}}
" {{{ telescope

lua << EOF

require("telescope").setup({
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = "close"
      }
    }
  },

  extensions = {
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = "smart_case",
    }
  }
})

require("telescope").load_extension("workspaces")
require("telescope").load_extension("ui-select")

EOF

nnoremap <c-p> <cmd>Telescope find_files<cr>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fw <cmd>Telescope workspaces<cr>
nnoremap <leader>fd <cmd>Telescope diagnostics<cr>

" }}}
" {{{ nvim-tree

" {{{ on_attach

lua << EOF

local function on_attach(bufnr)
  local api = require('nvim-tree.api')

  local function opts(desc)
    return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end


  -- Default mappings. Feel free to modify or remove as you wish.
  --
  -- BEGIN_DEFAULT_ON_ATTACH
  vim.keymap.set('n', '<C-]>', api.tree.change_root_to_node,          opts('CD'))
  vim.keymap.set('n', '<C-e>', api.node.open.replace_tree_buffer,     opts('Open: In Place'))
  vim.keymap.set('n', '<C-k>', api.node.show_info_popup,              opts('Info'))
  vim.keymap.set('n', '<C-r>', api.fs.rename_sub,                     opts('Rename: Omit Filename'))
  vim.keymap.set('n', '<C-t>', api.node.open.tab,                     opts('Open: New Tab'))
  vim.keymap.set('n', '<C-v>', api.node.open.vertical,                opts('Open: Vertical Split'))
  vim.keymap.set('n', '<C-x>', api.node.open.horizontal,              opts('Open: Horizontal Split'))
  vim.keymap.set('n', '<BS>',  api.node.navigate.parent_close,        opts('Close Directory'))
  vim.keymap.set('n', '<CR>',  api.node.open.edit,                    opts('Open'))
  vim.keymap.set('n', '<Tab>', api.node.open.preview,                 opts('Open Preview'))
  vim.keymap.set('n', '>',     api.node.navigate.sibling.next,        opts('Next Sibling'))
  vim.keymap.set('n', '<',     api.node.navigate.sibling.prev,        opts('Previous Sibling'))
  vim.keymap.set('n', '.',     api.node.run.cmd,                      opts('Run Command'))
  vim.keymap.set('n', '-',     api.tree.change_root_to_parent,        opts('Up'))
  vim.keymap.set('n', 'a',     api.fs.create,                         opts('Create'))
  vim.keymap.set('n', 'bmv',   api.marks.bulk.move,                   opts('Move Bookmarked'))
  vim.keymap.set('n', 'B',     api.tree.toggle_no_buffer_filter,      opts('Toggle No Buffer'))
  vim.keymap.set('n', 'c',     api.fs.copy.node,                      opts('Copy'))
  vim.keymap.set('n', 'C',     api.tree.toggle_git_clean_filter,      opts('Toggle Git Clean'))
  vim.keymap.set('n', '[c',    api.node.navigate.git.prev,            opts('Prev Git'))
  vim.keymap.set('n', ']c',    api.node.navigate.git.next,            opts('Next Git'))
  vim.keymap.set('n', 'd',     api.fs.remove,                         opts('Delete'))
  vim.keymap.set('n', 'D',     api.fs.trash,                          opts('Trash'))
  vim.keymap.set('n', 'E',     api.tree.expand_all,                   opts('Expand All'))
  vim.keymap.set('n', 'e',     api.fs.rename_basename,                opts('Rename: Basename'))
  vim.keymap.set('n', ']e',    api.node.navigate.diagnostics.next,    opts('Next Diagnostic'))
  vim.keymap.set('n', '[e',    api.node.navigate.diagnostics.prev,    opts('Prev Diagnostic'))
  vim.keymap.set('n', 'F',     api.live_filter.clear,                 opts('Clean Filter'))
  vim.keymap.set('n', 'f',     api.live_filter.start,                 opts('Filter'))
  vim.keymap.set('n', 'g?',    api.tree.toggle_help,                  opts('Help'))
  vim.keymap.set('n', 'gy',    api.fs.copy.absolute_path,             opts('Copy Absolute Path'))
  vim.keymap.set('n', 'H',     api.tree.toggle_hidden_filter,         opts('Toggle Dotfiles'))
  vim.keymap.set('n', 'I',     api.tree.toggle_gitignore_filter,      opts('Toggle Git Ignore'))
  vim.keymap.set('n', 'J',     api.node.navigate.sibling.last,        opts('Last Sibling'))
  vim.keymap.set('n', 'K',     api.node.navigate.sibling.first,       opts('First Sibling'))
  vim.keymap.set('n', 'm',     api.marks.toggle,                      opts('Toggle Bookmark'))
  vim.keymap.set('n', 'o',     api.node.open.edit,                    opts('Open'))
  vim.keymap.set('n', 'O',     api.node.open.no_window_picker,        opts('Open: No Window Picker'))
  vim.keymap.set('n', 'p',     api.fs.paste,                          opts('Paste'))
  vim.keymap.set('n', 'P',     api.node.navigate.parent,              opts('Parent Directory'))
  vim.keymap.set('n', 'q',     api.tree.close,                        opts('Close'))
  vim.keymap.set('n', 'r',     api.fs.rename,                         opts('Rename'))
  vim.keymap.set('n', 'R',     api.tree.reload,                       opts('Refresh'))
  vim.keymap.set('n', 's',     api.node.run.system,                   opts('Run System'))
  vim.keymap.set('n', 'S',     api.tree.search_node,                  opts('Search'))
  vim.keymap.set('n', 'U',     api.tree.toggle_custom_filter,         opts('Toggle Hidden'))
  vim.keymap.set('n', 'W',     api.tree.collapse_all,                 opts('Collapse'))
  vim.keymap.set('n', 'x',     api.fs.cut,                            opts('Cut'))
  vim.keymap.set('n', 'y',     api.fs.copy.filename,                  opts('Copy Name'))
  vim.keymap.set('n', 'Y',     api.fs.copy.relative_path,             opts('Copy Relative Path'))
  vim.keymap.set('n', '<2-LeftMouse>',  api.node.open.edit,           opts('Open'))
  vim.keymap.set('n', '<2-RightMouse>', api.tree.change_root_to_node, opts('CD'))
  -- END_DEFAULT_ON_ATTACH


  -- Mappings migrated from view.mappings.list
  --
  -- You will need to insert "your code goes here" for any mappings with a custom action_cb
  vim.keymap.set('n', 'u', api.tree.change_root_to_parent, opts('Up'))

end

EOF

" }}}

lua << EOF

require("nvim-tree").setup({
  sort_by = "case_sensitive",
  on_attach = on_attach,
  view = {
    width = 50,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

EOF

nnoremap <silent> <leader>e :NvimTreeToggle<cr>
nnoremap <silent> <leader>E :NvimTreeFindFile<cr>

" }}}
" {{{ vim-grepper

let g:grepper = {}
let g:grepper.tools = ['rg']
let g:grepper.highlight = 1
let g:grepper.quickfix = 1
let g:grepper.open = 1
let g:grepper.switch = 1
let g:grepper.dir = 'repo,file'

nnoremap <silent> GG :Grepper<cr>
nnoremap <silent> GC :Grepper-cword -noprompt<cr>

" }}}
" {{{ barbar

nnoremap <silent>    <A-,> <Cmd>BufferPrevious<CR>
nnoremap <silent>    <A-.> <Cmd>BufferNext<CR>

nnoremap <silent>    <A-<> <Cmd>BufferMovePrevious<CR>
nnoremap <silent>    <A->> <Cmd>BufferMoveNext<CR>

nnoremap <silent>    <A-1> <Cmd>BufferGoto 1<CR>
nnoremap <silent>    <A-2> <Cmd>BufferGoto 2<CR>
nnoremap <silent>    <A-3> <Cmd>BufferGoto 3<CR>
nnoremap <silent>    <A-4> <Cmd>BufferGoto 4<CR>
nnoremap <silent>    <A-5> <Cmd>BufferGoto 5<CR>
nnoremap <silent>    <A-6> <Cmd>BufferGoto 6<CR>
nnoremap <silent>    <A-7> <Cmd>BufferGoto 7<CR>
nnoremap <silent>    <A-8> <Cmd>BufferGoto 8<CR>
nnoremap <silent>    <A-9> <Cmd>BufferGoto 9<CR>
nnoremap <silent>    <A-0> <Cmd>BufferLast<CR>

nnoremap <silent>    <A-p> <Cmd>BufferPin<CR>

nnoremap <silent>    <A-c> <Cmd>BufferClose<CR>

nnoremap <silent> <Space>bb <Cmd>BufferOrderByBufferNumber<CR>
nnoremap <silent> <Space>bd <Cmd>BufferOrderByDirectory<CR>
nnoremap <silent> <Space>bl <Cmd>BufferOrderByLanguage<CR>
nnoremap <silent> <Space>bw <Cmd>BufferOrderByWindowNumber<CR>

" }}}
" {{{ trouble

lua << EOF

require("trouble").setup({
  height = 15,
  auto_open = false,
  auto_close = false
})

EOF

nnoremap <silent> <leader>D :TroubleToggle<cr>

" }}}
" {{{ treesitter

lua << EOF

require'nvim-treesitter.configs'.setup {
  ensure_installed = { 'python', 'javascript', 'typescript', 'json' },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },

  indent = {
    enable = false,
  },

  yati = {
    enable = true,
    default_lazy = true,

    -- Determine the fallback method used when we cannot calculate indent by tree-sitter
    --   'auto': fallback to vim auto indent
    --   'asis': use current indent as-is
    --   'cindent': see `:h cindent()`
    -- Or a custom function return the final indent result.
    default_fallback = 'auto'
  },

  autotag = {
    enable = true,
  },

  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil
  },

  textsubjects = {
    enable = true,
    prev_selection = ',',
    keymaps = {
      ['.'] = 'textsubjects-smart',
      [';'] = 'textsubjects-container-outer',
      ['i;'] = 'textsubjects-container-inner'
    }
  }
}

EOF

" }}}
" {{{ hlargs

lua require("hlargs").setup()

" }}}
" {{{ cmp-tabnine

lua << EOF

local tabnine = require('cmp_tabnine.config')

tabnine:setup({
	max_lines = 1000,
	max_num_results = 20,
	sort = true,
	run_on_every_keystroke = true,
	snippet_placeholder = '..',
	ignored_file_types = {
		-- default is not to ignore
		-- uncomment to ignore in lua:
		-- lua = true
	},
	show_prediction_strength = false,
	min_percent = 0
})

EOF

" }}}
" {{{ cmp

set completeopt=menu,menuone,noselect

lua << EOF

local cmp = require('cmp')
local lspkind = require('lspkind')

cmp.setup({
  formatting = {
    format = lspkind.cmp_format({
      mode = "symbol_text",
      menu = ({
        buffer = "[Buffer]",
        nvim_lsp = "[LSP]",
        nvim_lua = "[Lua]"
      }),

      maxwidth = 50,
      ellipsis_char = '...',

      before = function (entry, vim_item)
        return vim_item
      end
    })
  },

  snippet = {
    expand = function(args)
      vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
    end,
  },

  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },

  mapping = cmp.mapping.preset.insert({
    ['<C-J>'] = cmp.mapping.scroll_docs(-4),
    ['<C-K>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<C-k>'] = cmp.mapping.select_next_item(),
    ['<C-j>'] = cmp.mapping.select_prev_item()
  }),

  sources = cmp.config.sources({
    { name = 'ultisnips' },
    { name = 'nvim_lsp' },
    { name = 'bufname' },
    { name = 'buffer-lines' },
    { name = 'cmp_tabnine' },
    { name = 'cmp-tw2css' },
    { name = 'nvim_lsp_document_symbol' },
    { name = 'nvim_lsp_signature_help' },
    { name = 'tabnine', ignore_pattern = "[(|,]" },
    {
      name = "diag-codes",
      option = { in_comment = true }
    },
    { name = 'emoji' },
    {
      name = 'spell',
      option = {
          keep_all_entries = false,
          enable_in_context = function()
              return true
          end,
      }
    }
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
" {{{ mason-lspconfig,

lua << EOF

local capabilities = require('cmp_nvim_lsp').default_capabilities()
local handlers = {
  function (server_name) -- default handler (optional)
    require("lspconfig")[server_name].setup {
      capabilities = capabilities,
      on_attach = function(client, bufnr)
        require("lsp-status").on_attach(client, bufnr)
      end
      }
  end,
}

require('mason-lspconfig').setup({
  handlers = handlers,
  automatic_installation = true,
  ensure_installed = {
    'typos_lsp',
    'bashls',
    'cssls',
    'unocss',
    'dockerls',
    'eslint',
    'grammarly',
    'graphql',
    'html',
    'jsonls',
    'quick_lint_js',
    'tsserver',
    'biome',
    'vtsls',
    'jqls',
    'marksman',
    'prosemd_lsp',
    'remark_ls',
    'jedi_language_server',
    'pyright',
    'pylyzer',
    'pylsp',
    'ruby_ls',
    'solargraph',
    'rubocop',
    'stylelint_lsp',
    'lua_ls',
    'rust_analyzer',
    'tailwindcss',
    'terraformls',
    'tflint',
    'vimls',
    'lemminx',
    'hydra_lsp'
  }
})

require('mason-lspconfig').setup_handlers(handlers)

EOF

" }}}
" {{{ ultisnips

augroup UltiSnipsAddFiletypes
  autocmd!
  autocmd FileType js,javascript UltiSnipsAddFiletypes javascript-jsdoc
augroup END

let g:UltiSnipsEnableSnipMate = 0
let g:UltiSnipsExpandTrigger = '<cr>'
let g:UltiSnipsListSnippets = '<c-s><c-l>'
let g:UltiSnipsJumpForwardTrigger = '<c-j>'
let g:UltiSnipsJumpBackwardTrigger = '<c-k>'
let g:UltiSnipsSnippetDirectories = [s:GetUserSnippetsDirPath() . '/ultisnips']

nnoremap <c-r><c-s> :call UltiSnips#RefreshSnippets()<cr>

" }}}
" {{{ nvim-lightbulb

augroup lightbulb
  autocmd!
  autocmd CursorHold,CursorHoldI * lua require('nvim-lightbulb').update_lightbulb()
augroup END

" }}}
" {{{ leap

lua require("leap").add_default_mappings()

" }}}
" {{{ gitsigns

lua require("gitsigns").setup()

" }}}
" {{{ comment

lua require('Comment').setup()

" }}}
" {{{ tabline

lua << EOF

require('tabby.tabline').use_preset('active_wins_at_tail', {
  nerdfont = true,
})

EOF

nnoremap <silent> <leader>ta :$tabnew<cr>
nnoremap <silent> <leader>tc :tabclose<cr>
nnoremap <silent> <leader>to :tabonly<cr>
nnoremap <silent> <leader>tn :tabn<cr>
nnoremap <silent> <leader>tp :tabp<cr>
nnoremap <silent> <leader>tmp :-tabmove<cr>
nnoremap <silent> <leader>tmn :+tabmove<cr>

" }}}
" {{{ neoscroll

lua require("neoscroll").setup()

" }}}
" {{{ wilder

call wilder#setup({'modes': [':', '/', '?']})
call wilder#set_option('renderer', wilder#popupmenu_renderer({
      \ 'highlighter': wilder#basic_highlighter(),
      \ }))

" }}}
" {{{ nvim-surround

lua require("nvim-surround").setup()

" }}}
" {{{ todo-comments

lua require("todo-comments").setup()

" }}}
" {{{ foldsigns

lua require("foldsigns").setup()

" }}}
" {{{ nvim-gomove

lua << EOF

require("gomove").setup({
  map_defaults = true,
  reindent = true,
  undojoin = true,
  move_past_end_col = false
})

EOF

" }}}
" {{{ nvim-autopairs

lua require("nvim-autopairs").setup()

" }}}
" {{{ colorful-winsep

lua require("colorful-winsep").setup()

" }}}
" {{{ bufresize

lua require("bufresize").setup()

" }}}
" {{{ smart-splits

lua << EOF

require('smart-splits').setup({
  resize_mode = {
    hooks = {
      on_leave = require('bufresize').register,
    },
  },
})

vim.keymap.set('n', '<A-h>', require('smart-splits').resize_left)
vim.keymap.set('n', '<A-j>', require('smart-splits').resize_down)
vim.keymap.set('n', '<A-k>', require('smart-splits').resize_up)
vim.keymap.set('n', '<A-l>', require('smart-splits').resize_right)

vim.keymap.set('n', '<C-h>', require('smart-splits').move_cursor_left)
vim.keymap.set('n', '<C-j>', require('smart-splits').move_cursor_down)
vim.keymap.set('n', '<C-k>', require('smart-splits').move_cursor_up)
vim.keymap.set('n', '<C-l>', require('smart-splits').move_cursor_right)

vim.keymap.set('n', '<leader><leader>h', require('smart-splits').swap_buf_left)
vim.keymap.set('n', '<leader><leader>j', require('smart-splits').swap_buf_down)
vim.keymap.set('n', '<leader><leader>k', require('smart-splits').swap_buf_up)
vim.keymap.set('n', '<leader><leader>l', require('smart-splits').swap_buf_right)

EOF

" }}}
" {{{ twilight

" lua require("twilight").setup()

" }}}
" {{{ zen-mode

lua require("zen-mode").setup()

" }}}
" {{{ dashboard-nvim

" lua require("dashboard").setup()

" }}}
" {{{ vim-jsx-pretty-template

" augroup JsPreTemplate
"   autocmd!
"   autocmd FileType javascript JsPreTmpl
"   autocmd FileType javascript.jsx JsPreTmpl
"   autocmd FileType typescript JsPreTmpl
"   autocmd FileType typescript syn clear foldBraces
" augroup END

" }}}
" {{{ inc-rename

lua << EOF

require("inc_rename").setup()

vim.keymap.set("n", "<leader>rn", function()
  return ":IncRename " .. vim.fn.expand("<cword>")
end, { expr = true })

EOF

" }}}
" {{{ toggleterm

lua << EOF

require'FTerm'.setup({
    border = 'double',
    dimensions  = {
        height = 0.9,
        width = 0.9,
    },
})

vim.keymap.set('n', '<A-i>', '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', '<A-i>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')

EOF

" }}}
" {{{ range-highlight

lua require("range-highlight").setup()

" }}}
" {{{ glance

lua << EOF

-- Lua configuration
local glance = require('glance')
local actions = glance.actions

glance.setup({
  height = 18, -- Height of the window
  zindex = 45,

  -- By default glance will open preview "embedded" within your active window
  -- when `detached` is enabled, glance will render above all existing windows
  -- and won't be restiricted by the width of your active window
  detached = true,

  -- Or use a function to enable `detached` only when the active window is too small
  -- (default behavior)
  detached = function(winid)
    return vim.api.nvim_win_get_width(winid) < 100
  end,

  preview_win_opts = { -- Configure preview window options
    cursorline = true,
    number = true,
    wrap = true,
  },
  border = {
    enable = false, -- Show window borders. Only horizontal borders allowed
    top_char = '―',
    bottom_char = '―',
  },
  list = {
    position = 'right', -- Position of the list window 'left'|'right'
    width = 0.33, -- 33% width relative to the active window, min 0.1, max 0.5
  },
  theme = { -- This feature might not work properly in nvim-0.7.2
    enable = true, -- Will generate colors for the plugin based on your current colorscheme
    mode = 'auto', -- 'brighten'|'darken'|'auto', 'auto' will set mode based on the brightness of your colorscheme
  },
  mappings = {
    list = {
      ['j'] = actions.next, -- Bring the cursor to the next item in the list
      ['k'] = actions.previous, -- Bring the cursor to the previous item in the list
      ['<Down>'] = actions.next,
      ['<Up>'] = actions.previous,
      ['<Tab>'] = actions.next_location, -- Bring the cursor to the next location skipping groups in the list
      ['<S-Tab>'] = actions.previous_location, -- Bring the cursor to the previous location skipping groups in the list
      ['<C-u>'] = actions.preview_scroll_win(5),
      ['<C-d>'] = actions.preview_scroll_win(-5),
      ['v'] = actions.jump_vsplit,
      ['s'] = actions.jump_split,
      ['t'] = actions.jump_tab,
      ['<CR>'] = actions.jump,
      ['o'] = actions.jump,
      ['<leader>l'] = actions.enter_win('preview'), -- Focus preview window
      ['q'] = actions.close,
      ['Q'] = actions.close,
      ['<Esc>'] = actions.close,
      -- ['<Esc>'] = false -- disable a mapping
    },
    preview = {
      ['Q'] = actions.close,
      ['<Tab>'] = actions.next_location,
      ['<S-Tab>'] = actions.previous_location,
      ['<leader>l'] = actions.enter_win('list'), -- Focus list window
    },
  },
  hooks = {},
  folds = {
    fold_closed = '',
    fold_open = '',
    folded = true, -- Automatically fold list on startup
  },
  indent_lines = {
    enable = true,
    icon = '│',
  },
  winbar = {
    enable = true, -- Available starting from nvim-0.8+
  },
})

EOF

" }}}
" {{{ vim-illuminate

lua << EOF

require('illuminate').configure({
    providers = {
        'lsp',
        'treesitter',
        'regex',
    },
    delay = 100,
    filetype_overrides = {},
    filetypes_denylist = {
        'dirvish',
        'fugitive',
    },
    filetypes_allowlist = {},
    modes_denylist = {},
    modes_allowlist = {},
    providers_regex_syntax_denylist = {},
    providers_regex_syntax_allowlist = {},
    under_cursor = true,
    large_file_cutoff = nil,
    large_file_overrides = nil,
    min_count_to_highlight = 1,
})

EOF

" }}}
" {{{ modicator

" lua require("modicator").setup()

" }}}
" {{{ smartcolumn

lua require("smartcolumn").setup()

" }}}
" {{{ eyeliner

lua << EOF

require'eyeliner'.setup {
  highlight_on_key = true
}

EOF

" }}}
" {{{ focus.nvim

" lua << EOF
"
" require("focus").setup()
"
" local ignore_filetypes = { 'NvimTree' }
" local ignore_buftypes = { 'nofile', 'prompt', 'popup' }
"
" local augroup =
"     vim.api.nvim_create_augroup('FocusDisable', { clear = true })
"
" vim.api.nvim_create_autocmd('WinEnter', {
"     group = augroup,
"     callback = function(_)
"         if vim.tbl_contains(ignore_buftypes, vim.bo.buftype)
"         then
"             vim.w.focus_disable = true
"         else
"             vim.w.focus_disable = false
"         end
"     end,
"     desc = 'Disable focus autoresize for BufType',
" })
"
" vim.api.nvim_create_autocmd('FileType', {
"     group = augroup,
"     callback = function(_)
"         if vim.tbl_contains(ignore_filetypes, vim.bo.filetype) then
"             vim.b.focus_disable = true
"         else
"             vim.b.focus_disable = false
"         end
"     end,
"     desc = 'Disable focus autoresize for FileType',
" })
"
" EOF

" }}}
" {{{ dressing

lua require('dressing').setup()

" }}}
" {{{ glance

lua << EOF

require('glance').setup({
  height = 20
})

EOF

nnoremap <silent> <leader>Gr :Glance references<cr>
nnoremap <silent> <leader>Gd :Glance definitions<cr>
nnoremap <silent> <leader>Gt :Glance type_definitions<cr>
nnoremap <silent> <leader>Gi :Glance implementations<cr>

" }}}
" {{{ vim-lexical

let g:lexical#spelllang = ['en_us']
let g:lexical#thesaurus = [$HOME . '.src/github/f3rno64/dotfiles/moby_wordlist']

augroup lexical
  autocmd!
  autocmd FileType markdown,md,mkd call lexical#init()
  autocmd FileType textile call lexical#init()
  autocmd FileType text call lexical#init({ 'spell': 0 })
augroup END

" }}}
" {{{ ScrollColors

map <silent><F3> :NEXTCOLOR<cr>
map <silent><F2> :PREVCOLOR<cr>

" }}}
" {{{ vim-wheel

let g:wheel#map#up = '<c-k>'
let g:wheel#map#down = '<c-j>'
let g:wheel#map#mouse = 1
let g:wheel#scroll_on_wrap = 1

" }}}
" {{{ modes

lua require('modes').setup({})

" }}}
" {{{ hypersonic

lua require('hypersonic').setup({})

" }}}
" {{{ sort-import

lua require('sort-import').setup()

" }}}
" {{{ neoformat

let g:neoformat_try_node_exe = 1

augroup autoformat
  autocmd!
  autocmd BufWritePre *.js,*.ts,*.tsx Neoformat
augroup END

" }}}
" {{{ buffer-closer

lua << EOF

require("buffer-closer").setup({
	min_remaining_buffers = 2,
	retirement_minutes = 3,
	check_when_buffer_adding = true,
	check_after_minutes = {
		enabled = true,
		interval_minutes = 1,
	},

	excluded = {
		filetypes = { "lazy", "NvimTree" },
		buftypes = { "terminal", "nofile", "quickfix", "prompt", "help" },
		filenames = {},
	},

	ignore_working_windows = true
})

EOF

" }}}
" {{{ template-string.nvim

lua << EOF

require('template-string').setup({
  filetypes = { 'html', 'typescript', 'javascript', 'typescriptreact', 'javascriptreact', 'python' },
  jsx_brackets = true,
  remove_template_string = true,
  restore_quotes = {
    normal = [[']],
    jsx = [["]],
  },
})

EOF

" }}}
" {{{ lsp_signature.nvim

lua require'lsp_signature'.setup(opts)

" }}}
" {{{ search-replace.nvim

lua require("search-replace").setup({})

" }}}
" {{{ lsp-progress.nvim

lua require('lsp-progress').setup()

" }}}
" {{{ nvim-toggler.nvim

lua require('nvim-toggler').setup()
lua vim.keymap.set({ 'n', 'v' }, '<leader>cl', require('nvim-toggler').toggle)

" }}}
" {{{ tabout.nvim

lua << EOF

require('tabout').setup {
  tabkey = '<Tab>', -- key to trigger tabout, set to an empty string to disable
  backwards_tabkey = '<S-Tab>', -- key to trigger backwards tabout, set to an empty string to disable
  act_as_tab = true, -- shift content if tab out is not possible
  act_as_shift_tab = false, -- reverse shift content if tab out is not possible (if your keyboard/terminal supports <S-Tab>)
  default_tab = '<C-t>', -- shift default action (only at the beginning of a line, otherwise <TAB> is used)
  default_shift_tab = '<C-d>', -- reverse shift default action,
  enable_backwards = true, -- well ...
  completion = true, -- if the tabkey is used in a completion pum
  tabouts = {
    {open = "'", close = "'"},
    {open = '"', close = '"'},
    {open = '`', close = '`'},
    {open = '(', close = ')'},
    {open = '[', close = ']'},
    {open = '{', close = '}'}
  },
  ignore_beginning = true, --[[ if the cursor is at the beginning of a filled element it will rather tab out than shift the content ]]
  exclude = {} -- tabout will ignore these filetypes
}

EOF

" }}}
" {{{ cinnamon.nvim

lua require('cinnamon').setup()

" }}}
" {{{ auto-save.nvim

lua require("auto-save").setup()

" }}}
" {{{ hop

lua require'hop'.setup {}

nnoremap <silent>Hw :HopWord<CR>
nnoremap <silent>Hl :HopLine<CR>
nnoremap <silent>Hls :HopLineStart<CR>
nnoremap <silent>Ha :HopAnywhere<CR>
nnoremap <silent>Hc1 :HopChar1<CR>
nnoremap <silent>Hc2 :HopChar2<CR>
nnoremap <silent>Hp :HopPattern<CR>

" }}}
" {{{ overlength

lua << EOF

require('overlength').setup({
   -- Overlength highlighting enabled by default
  enabled = true,

  -- Colors for OverLength highlight group
  colors = {
    ctermfg = nil,
    ctermbg = 'darkgrey',
    fg = nil,
    bg = '#8B0000',
  },

  -- Mode to use textwidth local options
  -- 0: Don't use textwidth at all, always use config.default_overlength.
  -- 1: Use `textwidth, unless it's 0, then use config.default_overlength.
  -- 2: Always use textwidth. There will be no highlighting where
  --    textwidth == 0, unless added explicitly
  textwidth_mode = 2,
  -- Default overlength with no filetype
  default_overlength = 80,
  -- How many spaces past your overlength to start highlighting
  grace_length = 1,
  -- Highlight only the column or until the end of the line
  highlight_to_eol = true,

  -- List of filetypes to disable overlength highlighting
  disable_ft = { 'qf', 'help', 'man', 'checkhealth', 'lazy', 'packer', 'NvimTree', 'Telescope', 'WhichKey' },
})

EOF

" }}}
" {{{ smart-tab

" lua << EOF
"
" require('smart-tab').setup({
"     -- default options:
"     -- list of tree-sitter node types to filter
"     skips = { "string_content" },
"     -- default mapping, set `false` if you don't want automatic mapping
"     mapping = "<tab>",
"     -- filetypes to exclude
"     exclude_filetypes = {}
" })
"
" vim.keymap.set("n", "<tab>", require('smart-tab').smart_tab)
"
" EOF

" }}}
" {{{ inlay-hints

" lua << EOF
"
" require("inlay-hints").setup({
"   -- Enable InlayHints commands, include `InlayHintsToggle`,
"   -- `InlayHintsEnable` and `InlayHintsDisable`
"   commands = { enable = true },
"
"   -- Enable the inlay hints on `LspAttach` event
"   autocmd = { enable = true }
" })
"
" EOF

" }}}
" {{{ vim-wiki

" {{{ - data

let g:x#wiki#fold#header_depth_regex = '/^#\+/'
let g:x#wiki#fold#blank_line_regex = '/\v^\s*$/'
let g:x#wiki#state#fold#valid = maktaba#enum#Create([
  \   'INITIAL',
  \   'EXPANDED',
  \   'COLLAPSED',
  \   'DIRTY',
  \ ])

let g:x#wiki#state#fold#default = g:x#wiki#state#fold#valid.INITIAL
let g:x#wiki#state#fold = v:null

" }}}
" {{{   - configuration

augroup xf_vimwiki
  au BufEnter *.wiki :syntax sync fromstart
  au BufEnter *.wiki :e!
augroup END

let g:vimwiki_list = [{
  \ 'name': 'Personal Wiki',
  \ 'path': $HOME . '/.src/github/f3rno64/vim-wiki/src',
  \ 'path_html': $HOME . '/.src/github/f3rno64/vim-wiki/html',
  \ 'ext': '.wiki',
  \ 'links_space_char': '_',
  \ 'cycle_bullets': 1,
  \ 'diary_rel_path': 'journal/',
  \ 'diary_index': 'index',
  \ 'diary_header': 'Journal',
  \ 'diary_caption_level': 1,
  \ 'list_margin': 0,
  \ 'index': 'index',
  \ 'auto_toc': 1,
  \ 'auto_tags': 1,
  \ 'auto_export': 1,
  \ 'auto_diary_index': 1,
  \ 'auto_generate_links': 1,
  \ 'auto_generate_tags': 1,
  \ 'html_filename_parameterization': 0,
  \ 'maxhi': 1,
  \ 'nested_syntaxes': {
  \   'ruby': 'ruby',
  \   'python': 'python',
  \   'css': 'css',
  \   'scss': 'scss',
  \   'go': 'go',
  \   'js': 'javascript',
  \   'json': 'json',
  \   'c++': 'cpp',
  \   'sh': 'sh',
  \   'racket': 'racket',
  \ }}]

let g:vimwiki_auto_chdir = 0
let g:vimwiki_listsyms = '.oOX'
let g:vimwiki_listsym_rejected = '-'
let g:vimwiki_auto_header = 1
let g:vimwiki_toc_link_format = 0
let g:vimwiki_hl_headers = 0
let g:vimwiki_hl_cb_checked = 2
let g:vimwiki_dir_link = 'index'
let g:vimwiki_global_ext = 0
let g:vimwiki_create_link = 1
let g:vimwiki_markdown_link_ext = 1
let g:vimwiki_table_auto_fmt = 1
let g:vimwiki_conceallevel = 2
let g:vimwiki_conceal_pre = 1
let g:vimwiki_conceal_onechar_markers = 1
let g:vimwiki_emoji_enable = 3
let g:vimwiki_toc_header = 'Contents'
let g:vimwiki_links_header = 'Links'
let g:vimwiki_tags_header = 'Tags'
let g:vimwiki_links_header_level = 2
let g:vimwiki_tags_header_level = 2
let g:vimwiki_toc_header_level = 2
let g:vimwiki_folding='expr'
let g:vimwiki_markdown_header_style = 1
let g:vimwiki_valid_html_tags = 'b,i,s,u,sub,sup,kbd,br,hr,pre,script'
" let g:vimwiki_folding='expr:quick'
" let g:vimwiki_fold_lists = 0
" let g:vimwiki_filetypes = ['vimwiki']

" }}}
" {{{ - autocmd init

" autocmd FileType vimwiki UltiSnipsAddFiletypes <SID>xf_init()

" }}}

" }}}
" {{{ switch

let g:switch_mapping = '-'

" }}}
" {{{ jester

lua << EOF

require("jester").setup({
  cmd = "jest -t '$result' -- $file", -- run command
  identifiers = {"test", "it"}, -- used to identify tests
  prepend = {"describe"}, -- prepend describe blocks
  expressions = {"call_expression"}, -- tree-sitter object used to scan for tests/describe blocks
  path_to_jest_run = 'jest', -- used to run tests
  path_to_jest_debug = './node_modules/.bin/jest', -- used for debugging
  terminal_cmd = ":vsplit | terminal", -- used to spawn a terminal for running tests, for debugging refer to nvim-dap's config
  dap = { -- debug adapter configuration
    type = 'node2',
    request = 'launch',
    cwd = vim.fn.getcwd(),
    runtimeArgs = {'--inspect-brk', '$path_to_jest', '--no-coverage', '-t', '$result', '--', '$file'},
    args = { '--no-cache' },
    sourceMaps = false,
    protocol = 'inspector',
    skipFiles = {'<node_internals>/**/*.js'},
    console = 'integratedTerminal',
    port = 9229,
    disableOptimisticBPs = true
  }
})

EOF

" }}}
" {{{ one_monokai

" lua << EOF
"
" require("one_monokai").setup({
"     transparent = false,
"     colors = {},
"     themes = function(colors)
"         return {}
"     end,
"     italics = true,
" })
"
" EOF

" }}}
" {{{ custom quickfix

lua << EOF

local opts = { noremap=true, silent=true }

local function quickfix()
    vim.lsp.buf.code_action({
        filter = function(a) return a.isPreferred end,
        apply = true
    })
end

vim.keymap.set('n', 'qqf', quickfix, opts)

EOF

" }}}
" {{{ vim-test

let test#strategy = 'floaterm'

nmap <silent> <leader>tt :TestNearest<CR>
nmap <silent> <leader>tf :TestFile<CR>
nmap <silent> <leader>ts :TestSuite<CR>
nmap <silent> <leader>tl :TestLast<CR>

" }}}
" {{{ vim-isort

let g:vim_isort_map = '<C-i>'
let g:vim_isort_python_version = 'python3'

" }}}
" {{{ trouble

nnoremap <silent><leader>T :TroubleToggle<cr>

" }}}
" {{{ better-whitespace

let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1

" }}}
" " {{{ focus.nvim
"
" lua << EOF
"
" require("focus").setup({
"     enable = true, -- Enable module
"     commands = true, -- Create Focus commands
"     autoresize = {
"         enable = true, -- Enable or disable auto-resizing of splits
"         width = 0, -- Force width for the focused window
"         height = 0, -- Force height for the focused window
"         minwidth = 0, -- Force minimum width for the unfocused window
"         minheight = 0, -- Force minimum height for the unfocused window
"         height_quickfix = 10, -- Set the height of quickfix panel
"     },
"     split = {
"         bufnew = false, -- Create blank buffer for new split windows
"         tmux = false, -- Create tmux splits instead of neovim splits
"     },
"     ui = {
"         number = false, -- Display line numbers in the focussed window only
"         relativenumber = false, -- Display relative line numbers in the focussed window only
"         hybridnumber = false, -- Display hybrid line numbers in the focussed window only
"         absolutenumber_unfocussed = false, -- Preserve absolute numbers in the unfocussed windows
"
"         cursorline = true, -- Display a cursorline in the focussed window only
"         cursorcolumn = false, -- Display cursorcolumn in the focussed window only
"         colorcolumn = {
"             enable = false, -- Display colorcolumn in the foccused window only
"             list = '+1', -- Set the comma-saperated list for the colorcolumn
"         },
"         signcolumn = true, -- Display signcolumn in the focussed window only
"         winhighlight = false, -- Auto highlighting for focussed/unfocussed windows
"     }
" })
"
" EOF
"
" " }}}
" {{{ true-zen.nvim

lua << EOF

require('true-zen').setup({
	modes = { -- configurations per mode
		ataraxis = {
			shade = "dark", -- if `dark` then dim the padding windows, otherwise if it's `light` it'll brighten said windows
			backdrop = 0.25, -- percentage by which padding windows should be dimmed/brightened. Must be a number between 0 and 1. Set to 0 to keep the same background color
			minimum_writing_area = { -- minimum size of main window
				width = 81,
				height = 40,
			},
			quit_untoggles = true, -- type :q or :qa to quit Ataraxis mode
			padding = { -- padding windows
				left = 52,
				right = 52,
				top = 0,
				bottom = 0,
			},
			callbacks = { -- run functions when opening/closing Ataraxis mode
				open_pre = nil,
				open_pos = nil,
				close_pre = nil,
				close_pos = nil
			},
		},
		minimalist = {
			ignored_buf_types = { "nofile" }, -- save current options from any window except ones displaying these kinds of buffers
			options = { -- options to be disabled when entering Minimalist mode
				number = false,
				relativenumber = false,
				showtabline = 0,
				signcolumn = "no",
				statusline = "",
				cmdheight = 1,
				laststatus = 0,
				showcmd = false,
				showmode = false,
				ruler = true,
				numberwidth = 1
			},
			callbacks = { -- run functions when opening/closing Minimalist mode
				open_pre = nil,
				open_pos = nil,
				close_pre = nil,
				close_pos = nil
			},
		},
		narrow = {
			--- change the style of the fold lines. Set it to:
			--- `informative`: to get nice pre-baked folds
			--- `invisible`: hide them
			--- function() end: pass a custom func with your fold lines. See :h foldtext
			folds_style = "informative",
			run_ataraxis = true, -- display narrowed text in a Ataraxis session
			callbacks = { -- run functions when opening/closing Narrow mode
				open_pre = nil,
				open_pos = nil,
				close_pre = nil,
				close_pos = nil
			},
		},
		focus = {
			callbacks = { -- run functions when opening/closing Focus mode
				open_pre = nil,
				open_pos = nil,
				close_pre = nil,
				close_pos = nil
			},
		}
	},
	integrations = {
		tmux = true,
		kitty = {
			enabled = false,
			font = "+3"
		},
		-- twilight = true,
		lualine = true
	},
})

vim.api.nvim_set_keymap("n", "<leader>zn", ":TZNarrow<CR>", {})
vim.api.nvim_set_keymap("v", "<leader>zn", ":'<,'>TZNarrow<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>zf", ":TZFocus<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>zm", ":TZMinimalist<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>za", ":TZAtaraxis<CR>", {})

EOF

" }}}
" {{{ twilight.nvim

" lua << EOF
"
" require('twilight').setup({
"   dimming = {
"     alpha = 0.25, -- amount of dimming
"     -- we try to get the foreground from the highlight groups or fallback color
"     color = { "Normal", "#ffffff" },
"     term_bg = "#000000", -- if guibg=NONE, this will be used to calculate text color
"     inactive = false, -- when true, other windows will be fully dimmed (unless they contain the same buffer)
"   },
"   context = 10, -- amount of lines we will try to show around the current line
"   treesitter = true, -- use treesitter when available for the filetype
"   -- treesitter is used to automatically expand the visible text,
"   -- but you can further control the types of nodes that should always be fully expanded
"   expand = { -- for treesitter, we we always try to expand to the top-most ancestor with these types
"     "function",
"     "method",
"     "table",
"     "if_statement",
"   },
"   exclude = {}, -- exclude these filetypes
" })
"
" EOF

" }}}
" {{{ vim-clap

let g:clap_theme = 'shirotelin'

" }}}
" {{{ vim-vsnip

imap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
smap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'

" Expand or jump
imap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
smap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'

" Jump forward or backward
imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'

" Select or cut text to use as $TM_SELECTED_TEXT in the next snippet.
" See https://github.com/hrsh7th/vim-vsnip/pull/50
nmap        s   <Plug>(vsnip-select-text)
xmap        s   <Plug>(vsnip-select-text)
nmap        S   <Plug>(vsnip-cut-text)
xmap        S   <Plug>(vsnip-cut-text)

" If you want to use snippet for multiple filetypes, you can `g:vsnip_filetypes` for it.
let g:vsnip_filetypes = {}
let g:vsnip_filetypes.javascriptreact = ['javascript']
let g:vsnip_filetypes.typescriptreact = ['typescript']

" }}}
" {{{ vim-notify

" lua << EOF

" vim.notify = require("notify")

" EOF

" }}}
" {{{ tsc

lua << EOF

require('tsc').setup({
  auto_open_qflist = false,
  auto_close_qflist = false,
  auto_focus_qflist = false,
  auto_start_watch_mode = true,
  bin_path = require('tsc/utils').find_tsc_bin(),
  enable_progress_notifications = false,
  flags = {
    noEmit = true,
    project = function()
      return require('tsc/utils').find_nearest_tsconfig()
    end,
    watch = true,
  },
  hide_progress_notifications_from_history = true,
  spinner = { "⣾", "⣽", "⣻", "⢿", "⡿", "⣟", "⣯", "⣷" },
  pretty_errors = true,
})

EOF

" }}}
" {{{ accelerated-jk

nmap j <Plug>(accelerated_jk_gj)
nmap k <Plug>(accelerated_jk_gk)

" }}}
" {{{ bookmarks.nvim

lua require('telescope').load_extension('vim_bookmarks')

highlight BookmarkSign ctermbg=NONE ctermfg=160
highlight BookmarkLine ctermbg=194 ctermfg=NONE

let g:bookmark_sign = '🚩'
let g:bookmark_annotation_sign = '⭐'
let g:bookmark_highlight_lines = 1
let g:bookmark_no_default_key_mappings = 1
let g:bookmark_auto_save_file = $HOME . '/.vim-bookmarks'
let g:bookmark_auto_save = 1
let g:bookmark_center = 1
let g:bookmark_location_list = 1

" }}}
" {{{ actions-preview.nvim

lua << EOF

require("actions-preview").setup({
  diff = {
    ctxlen = 3,
  },

  highlight_command = {
    -- require("actions-preview.highlight").delta(),
    require("actions-preview.highlight").diff_so_fancy(),
    -- require("actions-preview.highlight").diff_highlight(),
  },

  backend = { "telescope" },

  telescope = {
    sorting_strategy = "ascending",
    layout_strategy = "vertical",
    layout_config = {
      width = 0.8,
      height = 0.9,
      prompt_position = "top",
      preview_cutoff = 20,
      preview_height = function(_, _, max_lines)
        return max_lines - 15
      end,
    },
  },
})

EOF

" }}}
" {{{ vim diagnostics config

lua << EOF

vim.diagnostic.config({
  update_in_insert = true,
  severity_sort = true,
  float = {
    border = 'rounded',
  },
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = '✘',
      [vim.diagnostic.severity.WARN] = '▲',
      [vim.diagnostic.severity.HINT] = '⚑',
      [vim.diagnostic.severity.INFO] = '»',
    },
  },
})

vim.api.nvim_create_autocmd('ModeChanged', {
  pattern = {'n:i', 'v:s'},
  desc = 'Disable diagnostics in insert and select mode',
  callback = function(e) vim.diagnostic.disable(e.buf) end
})

vim.api.nvim_create_autocmd('ModeChanged', {
  pattern = 'i:n',
  desc = 'Enable diagnostics when leaving insert mode',
  callback = function(e) vim.diagnostic.enable(e.buf) end
})

EOF

" }}}
" {{{ vim lsp config

lua << EOF

vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(
vim.lsp.handlers.hover,
{border = 'rounded'}
)

vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(
vim.lsp.handlers.signature_help,
{border = 'rounded'}
)

local function hide_semantic_highlights()
for _, group in ipairs(vim.fn.getcompletion('@lsp', 'highlight')) do
  vim.api.nvim_set_hl(0, group, {})
end
end

vim.api.nvim_create_autocmd('ColorScheme', {
desc = 'Clear LSP highlight groups',
callback = hide_semantic_highlights,
})

vim.api.nvim_set_hl(0, 'LspReferenceRead', {link = 'Search'})
vim.api.nvim_set_hl(0, 'LspReferenceText', {link = 'Search'})
vim.api.nvim_set_hl(0, 'LspReferenceWrite', {link = 'Search'})

vim.opt.updatetime = 400

local function highlight_symbol(event)
local id = vim.tbl_get(event, 'data', 'client_id')
local client = id and vim.lsp.get_client_by_id(id)
if client == nil or not client.supports_method('textDocument/documentHighlight') then
  return
end

local group = vim.api.nvim_create_augroup('highlight_symbol', {clear = false})

vim.api.nvim_clear_autocmds({buffer = event.buf, group = group})

vim.api.nvim_create_autocmd({'CursorHold', 'CursorHoldI'}, {
  group = group,
  buffer = event.buf,
  callback = vim.lsp.buf.document_highlight,
})

vim.api.nvim_create_autocmd({'CursorMoved', 'CursorMovedI'}, {
  group = group,
  buffer = event.buf,
  callback = vim.lsp.buf.clear_references,
})
end

vim.api.nvim_create_autocmd('LspAttach', {
desc = 'Setup highlight symbol',
callback = highlight_symbol,
})

EOF

" }}}
" {{{ gen

lua << EOF

-- https://github.com/David-Kunz/gen.nvim
--- {{{ all models

--  mode = "llava",
--  mode = "mistral",
--  mode = "mixtral",
--  mode = "starling-lm",
--  mode = "neural-chat",
--  mode = "codellama",
--  mode = "dolphin-mixtral",
--  mode = "mistral-openorca",
--  mode = "orca-mini",
--  mode = "deepseek-coder",
--  mode = "vicuna",
--  mode = "wizard-vicuna-uncensored",
--  mode = "phi",
--  mode = "dolphin-mistral",
--  mode = "zephyr",
--  mode = "wizardcoder",
--  mode = "openhermes",
--  mode = "phind-codellama",
--  mode = "openchat",
--  mode = "wizard-math",
--  mode = "nous-hermes",
--  mode = "falcon",
--  mode = "tinyllama",
--  mode = "codeup",
--  mode = "dolphin-phi",
--  mode = "starcoder",
--  mode = "everythinglm",
--  mode = "stable-beluga",
--  mode = "wizardlm-uncensored",
--  mode = "yi",
--  mode = "bakllava",
--  mode = "solar",
--  mode = "yarn-mistral",
--  mode = "sqlcoder",
--  mode = "wizard-vicuna",
--  mode = "samantha-mistral",
--  mode = "stable-code",
--  mode = "stablelm-zephyr",
--  mode = "qwen",
--  mode = "meditron",
--  mode = "magicoder",
--  mode = "deepseek-llm",
--  mode = "codebooga",
--  mode = "mistrallite",
--  mode = "llama-pro",
--  mode = "goliath",
--  mode = "nexusraven",
--  mode = "notux",
--  mode = "tinydolphin",
--  mode = "wizardlm",
--  mode = "alfred",
--  mode = "xwinlm",
--  mode = "megadolphin",
--  mode = "notus",

-- }}}

local gen = require('gen')
local prompts = gen.prompts

gen.setup({
debug = false,
show_prompt = true,
show_model = false,
model = "wizardcoder",
no_auto_close = false,
display_mode = "float",
list_models = '<omitted lua function>',
init = function(options) pcall(io.popen, "ollama serve > /dev/null 2>&1 &") end,
command = "curl --silent --no-buffer -X POST http://localhost:11434/api/generate -d $body"
})

prompts['Generate'] = {
replace = true,
prompt = "$input"
}

prompts['Ask'] = {
prompt = "Regarding the following text, $input:\n$text"
}

prompts['Review Code'] = {
prompt = "Review the following code and make concise suggestions:\n```$filetype\n$text\n```"
}

prompts['Elaborate_Text'] = {
replace = true,
prompt = "Elaborate the following text:\n$text"
}

prompts['Enhance_Code'] = {
replace = true,
extract = "```$filetype\n(.-)```",
prompt = "Enhance the following code, only output the result in format ```$filetype\n...\n```:\n```$filetype\n$text\n```"
}

prompts['Fix_Code'] = {
replace = true,
extract = "```$filetype\n(.-)```",
prompt = "Fix the following code. Only output the result in format ```$filetype\n...\n```:\n```$filetype\n$text\n```"
}

EOF

" }}}
" {{{ markdown.nvim

lua require('markdown').setup()

" }}}
" {{{ mkdx

if !has('nvim')
augroup MKDX
  au!
  au FileType markdown so $HOME/.vim/pack/plugins/start/mkdx/ftplugin/markdown.vim
augroup END
endif

let g:mkdx#settings = {
    \ 'image_extension_pattern': 'a\?png\|jpe\?g\|gif',
    \ 'insert_indent_mappings':  1,
    \ 'gf_on_steroids':          1,
    \ 'restore_visual':          1,
    \ 'enter':                   { 'enable': 1, 'shift': 1, 'o': 1,
    \                              'shifto': 1, 'malformed': 1 },
    \ 'tab':                     { 'enable': 1 },
    \ 'map':                     { 'prefix': '<leader>', 'enable': 1 },
    \ 'tokens':                  { 'enter':  ['-', '*', '>'],
    \                              'bold':   '**', 'italic': '*',
    \                              'strike': '',
    \                              'list':   '-',  'fence':  '',
    \                              'header': '#' },
    \ 'checkbox':                { 'toggles': [' ', '_', 'o', 'O', 'X'],
    \                              'update_tree': 2,
    \                              'initial_state': ' ',
    \                              'match_attrs': {
    \                                 'mkdxCheckboxEmpty': 'conceal cchar=1',
    \                                 'mkdxCheckboxPending': 'conceal cchar=2',
    \                                 'mkdxCheckboxComplete': 'conceal cchar=3',
    \                               }, },
    \ 'toc':                     { 'text':       'TOC',
    \                              'list_token': '-',
    \                              'position':   0,
    \                              'update_on_write':   1,
    \                              'details':    {
    \                                 'enable':  1,
    \                                 'summary': '{{toc.text}}',
    \                                 'nesting_level': 3,
    \                                 'child_count': 5,
    \                                 'child_summary': 'show {{count}} items'
    \                              }
    \                            },
    \ 'table':                   { 'divider': '|',
    \                              'header_divider': '-',
    \                              'align': {
    \                                 'left':    [],
    \                                 'right':   [],
    \                                 'center':  [],
    \                                 'default': 'center'
    \                              }
    \                            },
    \ 'links':                   { 'external': {
    \                                 'enable':     1,
    \                                 'timeout':    3,
    \                                 'host':       '',
    \                                 'relative':   1,
    \                                 'user_agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/9001.0.0000.000 vim-mkdx/1.10.0'
    \                              },
    \                              'fragment': {
    \                                 'jumplist': 1,
    \                                 'complete': 1
    \                              },
    \                              'conceal': 1
    \                            },
    \ 'highlight':               {
    \                              'enable': 1,
    \                              'frontmatter': {
    \                                'yaml': 1,
    \                                'toml': 0,
    \                                'json': 0
    \                              }
    \                            },
    \ 'auto_update':             { 'enable': 1 },
    \ 'fold':                    { 'enable': 1, 'components': ['toc', 'fence'] }
    \ }

" }}}
" {{{ github-preview.nvim

lua << EOF

require("github-preview").setup({
  host = "localhost",
  port = 6666,
  single_file = false,
  theme = {
      name = "system",
      high_contrast = false,
  },
  details_tags_open = true,
  cursor_line = {
      disable = false,
      color = "#c86414",
      opacity = 0.2,
  },
  scroll = {
      disable = false,
      top_offset_pct = 35,
  },
  log_level = nil,
})

EOF

" }}}
" {{{ vim-gitgutter

let g:gitgutter_sign_added = emoji#for('white_check_mark')
let g:gitgutter_sign_modified = emoji#for('pencil2')
let g:gitgutter_sign_removed = emoji#for('x')
let g:gitgutter_sign_modified_removed = emoji#for('red_circle')

" }}}
" {{{ tabnine-nvim

lua << EOF

require('tabnine').setup({
  disable_auto_comment=true,
  accept_keymap="<Tab>",
  dismiss_keymap = "<C-]>",
  debounce_ms = 300,
  suggestion_color = {gui = "#808080", cterm = 244},
  exclude_filetypes = {"TelescopePrompt", "NvimTree"},
  log_file_path = nil
})

EOF

" }}}
" {{{ vim-wtf

lua << EOF

require("wtf").setup({
    popup_type = "popup",
    openai_api_key = vim.env.VIM_WTF_OPENAI_API_KEY,
    openai_model_id = "gpt-3.5-turbo",
    context = true,
    language = "english",
    search_engine = "google",
    hooks = {
        request_started = nil,
        request_finished = nil,
    },
    winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
})

EOF

" }}}
" {{{ codeium

let g:codeium_disable_bindings = 1

" }}}
" {{{ backseat.nvim

lua << EOF

require("backseat").setup({
    openai_api_key = vim.env.OPENAI_API_KEY,
    openai_model_id = 'gpt-4',
    language = 'english',
    split_threshold = 100,
    additional_instruction = "Respond precisely",
    highlight = {
      icon = '', -- ''
      group = 'Comment',
    }
})

EOF

" }}}
" {{{ gutentags

let g:gutentags_modules = ['ctags']
let g:gutentags_project_root = ['.root']
let g:gutentags_cache_dir = expand($HOME . '/.cache/tags')
let g:gutentags_plus_switch = 1
let g:gutentags_file_list_command = 'fd -e c -e h'

" }}}

" {{{ custom keybindings

" {{{ plugin management

nnoremap <silent> PI :PlugInstall<cr>
nnoremap <silent> PU :PlugUpdate<cr>
nnoremap <silent> PG :PlugUpgrade<cr>
nnoremap <silent> PC :PlugClean<cr>

" }}}
" {{{ bookmarks

nnoremap <silent> BB <Plug>BookmarkToggle
nnoremap <silent> Bi <Plug>BookmarkAnnotate
nnoremap <silent> Bs <Plug>BookmarkShowAll
nnoremap <silent> Bj <Plug>BookmarkNext
nnoremap <silent> Bk <Plug>BookmarkPrev
nnoremap <silent> Bc <Plug>BookmarkClear
nnoremap <silent> Bx <Plug>BookmarkClearAll
nnoremap <silent> Bkk <Plug>BookmarkMoveUp
nnoremap <silent> Bjj <Plug>BookmarkMoveDown
nnoremap <silent> Bg <Plug>BookmarkMoveToLine
nnoremap <silent> tba :Telescope vim_bookmarks all<cr>
nnoremap <silent> tbf :Telescope vim_bookmarks current_file<cr>

" }}}
" {{{ edit vim/nvim config

if has('nvim')
  nnoremap <silent> <leader>rr :e ~/.config/nvim/init.vim<cr>
else
  nnoremap <silent> <leader>rr :e ~/.vimrc<cr>
endif

" }}}
" {{{ force write (save)

nnoremap <silent> WW :w!<cr><cr>

" }}}
" {{{ force edit

nnoremap <silent> EE :e!<cr>

" }}}
" {{{ toggle quickfix

function! ToggleQuickFix()
    if empty(filter(getwininfo(), 'v:val.quickfix'))
        copen
    else
        cclose
    endif
endfunction

nnoremap <silent> <leader>cc :call ToggleQuickFix()<cr>

" }}}
" {{{ sort lines

function! SortLines() range
  execute a:firstline . ',' . a:lastline . 's/^\(.*\)$/\=strdisplaywidth( submatch(0) ) . " " . submatch(0)/'
  execute a:firstline . ',' . a:lastline . 'sort n'
  execute a:firstline . ',' . a:lastline . 's/^\d\+\s//'
endfunction

vnoremap <silent> SS :'<,'> call SortLines()<cr><cr>

" }}}
" {{{ select in braces

nnoremap <silent> VB viB

" }}}
" {{{ insert dynamic class name in react

function! MakeClassNameAttributeDynamic()
  execute "normal! :s/className=\"\\(.*\\)\"/className={cn('\\1')}/\r"
endfunction

nnoremap <silent> <leader>cn :call MakeClassNameAttributeDynamic()<cr>

" }}}
" {{{ reload vim/nvim config

nnoremap <silent> <leader>RR :source $MYVIMRC<cr>

" }}}
" {{{ append comma

nnoremap <silent> <leader>, A,<esc>

" }}}
" {{{ lsp format

nnoremap <leader>FF :lua vim.lsp.buf.format()<cr>

" }}}
" {{{ insert snippet folds

function! s:GetFoldShortcutExecString(fold_str)
  return GetCommentString() . ' ' . a:fold_str
endfunction

function! s:InsertFoldEndAndStart()
  execute 'normal! o' . <SID>GetFoldShortcutExecString('}}}')
  execute 'normal! o' . <SID>GetFoldShortcutExecString('{{{ ')
  execute 'normal! o'
  execute 'normal! k'
endfunction

nnoremap <silent> FFS :put=(<SID>GetFoldShortcutExecString('{{{ '))<cr>kddA
nnoremap <silent> FFE :put=(<SID>GetFoldShortcutExecString('}}}'))<cr>kdd<esc>
nnoremap <silent> FFM :call <SID>InsertFoldEndAndStart()<cr>

" }}}
" {{{ tabs

nnoremap <silent> <leader>tn :tabnew<cr>
nnoremap <silent> <leader>tc :tabclose<cr>
nnoremap <silent> <leader>to :tabonly<cr>
nnoremap <silent> <leader>tl :tabnext<cr>
nnoremap <silent> <leader>th :tabprevious<cr>
nnoremap <silent> <leader>tL :+tabmove<cr>
nnoremap <silent> <leader>tH :-tabmove<cr>

" }}}
" {{{ diagnostics

nnoremap <silent> <leader>dqf :lua vim.diagnostic.setqflist()<cr>
nnoremap <silent> gl :lua vim.diagnostic.open_float()<cr>
nnoremap <silent> [d :lua vim.diagnostic.goto_prev({ border = "single" })<cr>
nnoremap <silent> ]d :lua vim.diagnostic.goto_next({ border = "single" })<cr>

" }}}
" {{{ lsp

nnoremap <silent> CA :lua vim.lsp.buf.code_action()<cr>
vnoremap <silent> CA :lua vim.lsp.buf.code_action()<cr>

nnoremap <silent> CAP :lua require('actions-preview').code_actions<cr>
vnoremap <silent> CAP :lua require('actions-preview').code_actions<cr>

nnoremap <silent> GD :lua vim.lsp.buf.declaration()<cr>
nnoremap <silent> Gd :lua vim.lsp.buf.definition()<cr>
nnoremap <silent> Gt :lua vim.lsp.buf.type_definition()<cr>
nnoremap <silent> Gr :lua vim.lsp.buf.references()<cr>
nnoremap <silent> Gi :lua vim.lsp.buf.implementation()<cr>
nnoremap <silent> GH :lua vim.lsp.buf.hover()<cr>
nnoremap <silent> GS :lua vim.lsp.buf.signature_help()<cr>
nnoremap <silent> GT :lua vim.lsp.buf.type_definition()<cr>
nnoremap <silent> rn :lua vim.lsp.buf.rename()<cr>
nnoremap <silent> <leader>ff :lua vim.lsp.buf.format()<cr>

" }}}
" {{{ refactor insert _isUndefined

nnoremap <silent> <leader>rd :s/typeof \(\w*\) === 'undefined'/_isUndefined(\1)/g<cr>
nnoremap <silent> <leader>rud :s/typeof \(\w*\) !== 'undefined'/!_isUndefined(\1)/g<cr>

" }}}
" {{{ gen.nvim

lua vim.keymap.set({ 'n', 'v' }, 'GAI', ':Gen<CR>')

" }}}
" {{{ insert emoji list

function s:InsertEmojiList()
  for e in emoji#list()
    call append(line('$'), printf('%s (%s)', emoji#for(e), e))
  endfor
endfunction

nnoremap <silent> IEL :call s:InsertEmojiList()<cr>

" }}}
" {{{ edit snippets

let s:ts_snippets_path = s:GetUserSnippetFilePath('typescript')
let s:tsreact_snippets_path = s:GetUserSnippetFilePath('typescriptreact')

if !empty(s:ts_snippets_path)
  execute 'nnoremap <silent> est :e ' . s:ts_snippets_path . '<cr>'
endif

if !empty(s:tsreact_snippets_path)
  execute 'nnoremap <silent> estr :e ' . s:tsreact_snippets_path . '<cr>'
endif

" }}}
" {{{ vim-wtf

xnoremap <silent> <leader>gw :lua require('wtf').ai()<cr>
nnoremap <silent> <leader>gw :lua require('wtf').ai()<cr>
nnoremap <silent> <leader>gW :lua require('wtf').search()<cr>

" }}}
" {{{ codeium

imap <script><silent><nowait><expr> <S-tab> codeium#Accept()
imap jj <cmd>call codeium#CycleCompletions(-1)<cr>
imap kk <cmd>call codeium#CycleCompletions(-1)<cr>
imap cc <cmd>call codeium#Clear()<cr>

" }}}
" {{{ exec current line

nnoremap <silent> <leader>ex :exec '!'.getline('.')<cr>

" }}}

" }}}
