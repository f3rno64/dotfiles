let s:f3_plugin_path = $HOME . '/.nvim-plugins'

" {{{ disable netrw, as we use nvim-tree instead

let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1

" }}}
" {{{ plugin loading

call plug#begin(s:f3_plugin_path)

" {{{ libs

Plug 'nvim-lua/plenary.nvim'
Plug 'tpope/vim-repeat'
Plug 'google/vim-maktaba'

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
Plug 'p00f/nvim-ts-rainbow'
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
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'jay-babu/mason-null-ls.nvim'
Plug 'RubixDev/mason-update-all'
Plug 'dnlhc/glance.nvim'
Plug 'pwntester/nvim-lsp'

" }}}
" {{{ cmp

Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'

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

Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

" }}}
" {{{ wiki

Plug 'powerman/vim-plugin-AnsiEsc', { 'on': 'AnsiEsc' }
Plug 'rbgrouleff/bclose.vim'
Plug 'mattn/calendar-vim'
Plug 'vimwiki/vimwiki', { 'branch': 'dev' }
Plug 'f3rno/vimwiki-footnotes'

" }}}
" {{{ other

Plug 'joaohkfaria/vim-jest-snippets'
" Plug 'MysticalDevil/inlay-hints.nvim'
Plug 'boltlessengineer/smart-tab.nvim'
" Plug 'codota/tabnine-nvim', { 'do': './dl_binaries.sh' }
Plug 'lcheylus/overlength.nvim'
Plug 'phaazon/hop.nvim', { 'branch': 'v2' }
" Plug 'folke/which-key.nvim'
Plug 'zaldih/themery.nvim'
Plug 'anuvyklack/keymap-amend.nvim'
Plug 'okuuva/auto-save.nvim'
Plug 'declancm/cinnamon.nvim'
Plug 'abecodes/tabout.nvim'
Plug 'nguyenvukhang/nvim-toggler'
Plug 'zaldih/themery.nvim'
Plug 'linrongbin16/lsp-progress.nvim'
Plug 'roobert/search-replace.nvim'
Plug 'ray-x/lsp_signature.nvim'
Plug 'axelvc/template-string.nvim'
Plug 'sontungexpt/buffer-closer'
Plug 'jamestthompson3/sort-import.nvim'
Plug 'sbdchd/neoformat'
" Plug 'github/copilot.vim'
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
Plug 'beauwilliams/focus.nvim'
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
  let &rtp=&rtp
  UpdateRemotePlugins
endfunction

Plug 'gelguy/wilder.nvim', { 'do': function('UpdateRemotePlugins') }

" }}}
" {{{ colorschemes

Plug 'jadnw/gemstones.nvim'
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
" Plug 'yasukotelin/shirotelin'
Plug 'toupeira/vim-desertink'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'https://gitlab.com/yorickpeterse/vim-paper.git'
Plug 'yorik1984/newpaper.nvim'
Plug 'https://gitlab.com/protesilaos/tempus-themes-vim.git'

" }}}

call plug#end()

" }}}
" {{{ general settings

syntax enable

filetype plugin on
filetype indent on

set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

set timeout           " for mappings
set timeoutlen=300    " default value
set ttimeout          " for key codes
set ttimeoutlen=10    " unnoticeable small value

set encoding=utf-8
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
set tw=79 " word wrap
set nocompatible
set equalalways
set wildignore+=*node_modules/**
set noswapfile
set nobackup
set nowritebackup
set concealcursor=nc
set conceallevel=3
set termguicolors
set mouse+=a
set splitkeep=screen

" {{{ vim-thematic

let g:thematic#defaults = {
\ "background": "dark",
\ "laststatus": 2,
\ "ruler": 1
\ }

let g:thematic#themes = {
\   "newpaper": {
\     "background": "light",
\     "colorscheme": "newpaper",
\     "typeface": "JetBrainsMono Nerd Font"
\   },
\
\   "kanagawa": {
\     "colorscheme": "kanagawa",
\     "background": "dark",
\   },
\
\   "material": {
\     "colorscheme": "material",
\     "background": "dark",
\   },
\
\   "base16-irblack": {
\     "colorscheme": "base16-irblack",
\     "background": "dark",
\   }
\ }

nnoremap tn :ThematicNext<cr>
nnoremap tp :ThematicPrevious<cr>
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
set foldlevel=1

" }}}
" {{{ autocommands

augroup TerraformVarFiles
  au!
  au BufNewFile,BufRead *.tfvars.dev setf terraform
  au BufNewFile,BufRead *.tfvars.prod setf terraform
augroup END

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
au BufNewFile,BufRead */sway/config setf i3config

au InsertLeave * write

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
" {{{ gemstones

lua require("gemstones").setup {}

" }}}

set background=light

" Light color schemes
" colorscheme fruchtig
" colorscheme shirotelin
" colorscheme onehalflight
" colorscheme paper
" colorscheme tempus_day
" colorscheme base16-one-light
" colorscheme base16-railscasts
" colorscheme base16-github
" colorscheme base16-mexico-light
" colorscheme base16-still-alive
" colorscheme base16-unikitty-light

" Light and dark color schemes
" colorscheme toast
" colorscheme leaf
" colorscheme PaperColor
" colorscheme catppuccin-latte
" colorscheme newpaper

" Dark color schemes
" colorscheme lucid
" colorscheme base16-ayu-mirage
" colorscheme vn-night
" colorscheme base16-summercamp
" colorscheme base16-tokyodark-terminal
" colorscheme sherbet
" colorscheme slate
" colorscheme murphy
" colorscheme gruvbox-baby
" colorscheme nightly
" colorscheme tender
" colorscheme sherbet
" colorscheme dogrun
" colorscheme tempus_future
" colorscheme tempus_night
" colorscheme tempus_warp
" colorscheme desertink
" colorscheme lighthaus
" colorscheme midnight
" colorscheme nebulous
" colorscheme gemstones
" colorscheme base16-material-palenight
" colorscheme base16-horizon-terminal-dark
colorscheme base16-irblack
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

let mapleader=','

" }}}
" {{{ gui

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
  let &guifont = g:font_name . " " . g:font_size
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
" {{{ mason

lua require("mason").setup()

" }}}
" {{{ mason-lspconfig

lua << EOF

local handlers = {
  function (server_name) -- default handler (optional)
    require("lspconfig")[server_name].setup {}
  end,
}

require("mason-lspconfig").setup({ handlers = handlers })
require("mason-lspconfig").setup_handlers(handlers)

EOF

" }}}
" {{{ mason-null-ls

lua << EOF

require("mason-null-ls").setup({
  automatic_setup = true,
})

EOF

" }}}
" {{{ mason-update-all

lua require("mason-update-all").setup()

" }}}
" {{{ null-ls

lua << EOF

local null_ls = require("null-ls")

null_ls.setup({
  debounce = 500,
  sources = {
    null_ls.builtins.diagnostics.tsc,
    null_ls.builtins.diagnostics.jsonlint,
    null_ls.builtins.diagnostics.markdownlint,
    null_ls.builtins.diagnostics.shellcheck,
    null_ls.builtins.diagnostics.pylint,
    null_ls.builtins.diagnostics.eslint_d
  },
})

EOF

" }}}
" {{{ lsp

lua << EOF

vim.keymap.set({ "v", "n" }, "ca", function() vim.lsp.buf.code_action() end, bufopts)
vim.keymap.set({ "v", "n" }, "cp", require("actions-preview").code_actions)
vim.api.nvim_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "[d", '<cmd>lua vim.diagnostic.goto_prev({ border = "single" })<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "]d", '<cmd>lua vim.diagnostic.goto_next({ border = "single" })<CR>', { noremap = true, silent = true })

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

" {{{ shortcut to edit config

if has('nvim')
  nnoremap <silent> <leader>rr :e ~/.config/nvim/init.vim<cr>
else
  nnoremap <silent> <leader>rr :e ~/.vimrc<cr>
endif

" }}}
" {{{ shortcut to force write

nnoremap <silent> <leader><S-w> :w!<cr>

" }}}
" {{{ shortcut to toggle quickfix

function! ToggleQuickFix()
    if empty(filter(getwininfo(), 'v:val.quickfix'))
        copen
    else
        cclose
    endif
endfunction

nnoremap <silent> <leader>cc :call ToggleQuickFix()<cr>

" }}}
" {{{ tabnine-nvim

" lua << EOF
"
" require('tabnine').setup({
"   disable_auto_comment=true,
"   accept_keymap="<C-t>",
"   dismiss_keymap = "<C-]>",
"   debounce_ms = 800,
"   suggestion_color = {gui = "#808080", cterm = 244},
"   exclude_filetypes = {"TelescopePrompt", "NvimTree"},
"   log_file_path = nil, -- absolute path to Tabnine log file
" })
"
" EOF

" }}}
" {{{ lualine

lua << EOF

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
    lualine_x = {"tabnine", "fileformat", "filetype"},
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
" {{{ cmp

set completeopt=menu,menuone,noselect

lua << EOF

local cmp = require('cmp')
local lspkind = require('lspkind')

cmp.setup({
  formatting = {
    format = lspkind.cmp_format({
      mode = 'symbol',
      maxwidth = 50,
      ellipsis_char = '...',

      before = function (entry, vim_item)
        return vim_item
      end
    })
  },
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
    ['<C-k>'] = cmp.mapping.select_next_item(),
    ['<C-k>'] = cmp.mapping.select_prev_item()
  }),
  sources = cmp.config.sources({
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
" {{{ ultisnips

autocmd FileType js,javascript UltiSnipsAddFiletypes javascript-jsdoc

let g:UltiSnipsEnableSnipMate = 0
let g:UltiSnipsExpandTrigger = '<c-space>'
let g:UltiSnipsListSnippets = '<c-space><c-space>'
let g:UltiSnipsJumpForwardTrigger = '<c-j>'
let g:UltiSnipsJumpBackwardTrigger = '<c-k>'
let g:UltiSnipsSnippetDirectories = [
  \   $HOME . '/.src/github/f3rno64/vim-snippets/ultisnips',
  \ ]

" }}}
" {{{ nvim-lightbulb

autocmd CursorHold,CursorHoldI * lua require('nvim-lightbulb').update_lightbulb()

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

autocmd FileType javascript JsPreTmpl
autocmd FileType javascript.jsx JsPreTmpl
autocmd FileType typescript JsPreTmpl
autocmd FileType typescript syn clear foldBraces

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
" {{{ python config

autocmd FileType python syntax on

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
    enable = true, -- Available strating from nvim-0.8+
  },
})

EOF

" }}}
" {{{ vim-illuminate

lua << EOF

require('illuminate').configure({
    -- providers: provider used to get references in the buffer, ordered by priority
    providers = {
        'lsp',
        'treesitter',
        'regex',
    },
    -- delay: delay in milliseconds
    delay = 100,
    -- filetype_overrides: filetype specific overrides.
    -- The keys are strings to represent the filetype while the values are tables that
    -- supports the same keys passed to .configure except for filetypes_denylist and filetypes_allowlist
    filetype_overrides = {},
    -- filetypes_denylist: filetypes to not illuminate, this overrides filetypes_allowlist
    filetypes_denylist = {
        'dirvish',
        'fugitive',
    },
    -- filetypes_allowlist: filetypes to illuminate, this is overriden by filetypes_denylist
    filetypes_allowlist = {},
    -- modes_denylist: modes to not illuminate, this overrides modes_allowlist
    -- See `:help mode()` for possible values
    modes_denylist = {},
    -- modes_allowlist: modes to illuminate, this is overriden by modes_denylist
    -- See `:help mode()` for possible values
    modes_allowlist = {},
    -- providers_regex_syntax_denylist: syntax to not illuminate, this overrides providers_regex_syntax_allowlist
    -- Only applies to the 'regex' provider
    -- Use :echom synIDattr(synIDtrans(synID(line('.'), col('.'), 1)), 'name')
    providers_regex_syntax_denylist = {},
    -- providers_regex_syntax_allowlist: syntax to illuminate, this is overriden by providers_regex_syntax_denylist
    -- Only applies to the 'regex' provider
    -- Use :echom synIDattr(synIDtrans(synID(line('.'), col('.'), 1)), 'name')
    providers_regex_syntax_allowlist = {},
    -- under_cursor: whether or not to illuminate under the cursor
    under_cursor = true,
    -- large_file_cutoff: number of lines at which to use large_file_config
    -- The `under_cursor` option is disabled when this cutoff is hit
    large_file_cutoff = nil,
    -- large_file_config: config to use for large files (based on large_file_cutoff).
    -- Supports the same keys passed to .configure
    -- If nil, vim-illuminate will be disabled for large files.
    large_file_overrides = nil,
    -- min_count_to_highlight: minimum number of matches required to perform highlighting
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

lua require("focus").setup()

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

let g:lexical#spelllang = ["en_us"]
let g:lexical#thesaurus = ["/home/f3rno64/.src/github/f3rno64/dotfiles/moby_wordlist"]

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

autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx Neoformat

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
" {{{ which-key

" lua << EOF
"
" vim.o.timeout = true
" vim.o.timeoutlen = 300
"
" require("which-key").setup({
"   plugins = {
"     marks = true, -- shows a list of your marks on ' and `
"     registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
"     -- the presets plugin, adds help for a bunch of default keybindings in Neovim
"     -- No actual key bindings are created
"     spelling = {
"       enabled = true, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
"       suggestions = 20, -- how many suggestions should be shown in the list?
"     },
"     presets = {
"       operators = true, -- adds help for operators like d, y, ...
"       motions = true, -- adds help for motions
"       text_objects = true, -- help for text objects triggered after entering an operator
"       windows = true, -- default bindings on <c-w>
"       nav = true, -- misc bindings to work with windows
"       z = true, -- bindings for folds, spelling and others prefixed with z
"       g = true, -- bindings for prefixed with g
"     },
"   },
"   -- add operators that will trigger motion and text object completion
"   -- to enable all native operators, set the preset / operators plugin above
"   operators = { gc = "Comments" },
"   key_labels = {
"     -- override the label used to display some keys. It doesn't effect WK in any other way.
"     -- For example:
"     -- ["<space>"] = "SPC",
"     -- ["<cr>"] = "RET",
"     -- ["<tab>"] = "TAB",
"   },
"   motions = {
"     count = true,
"   },
"   icons = {
"     breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
"     separator = "➜", -- symbol used between a key and it's label
"     group = "+", -- symbol prepended to a group
"   },
"   popup_mappings = {
"     scroll_down = "<c-d>", -- binding to scroll down inside the popup
"     scroll_up = "<c-u>", -- binding to scroll up inside the popup
"   },
"   window = {
"     border = "none", -- none, single, double, shadow
"     position = "bottom", -- bottom, top
"     margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]. When between 0 and 1, will be treated as a percentage of the screen size.
"     padding = { 1, 2, 1, 2 }, -- extra window padding [top, right, bottom, left]
"     winblend = 0, -- value between 0-100 0 for fully opaque and 100 for fully transparent
"     zindex = 1000, -- positive value to position WhichKey above other floating windows.
"   },
"   layout = {
"     height = { min = 4, max = 25 }, -- min and max height of the columns
"     width = { min = 20, max = 50 }, -- min and max width of the columns
"     spacing = 3, -- spacing between columns
"     align = "left", -- align columns left, center or right
"   },
"   ignore_missing = false, -- enable this to hide mappings for which you didn't specify a label
"   hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "^:", "^ ", "^call ", "^lua " }, -- hide mapping boilerplate
"   show_help = true, -- show a help message in the command line for using WhichKey
"   show_keys = true, -- show the currently pressed key and its label as a message in the command line
"   triggers = "auto", -- automatically setup triggers
"   -- triggers = {"<leader>"} -- or specifiy a list manually
"   -- list of triggers, where WhichKey should not wait for timeoutlen and show immediately
"   triggers_nowait = {
"     -- marks
"     "`",
"     "'",
"     "g`",
"     "g'",
"     -- registers
"     '"',
"     "<c-r>",
"     -- spelling
"     "z=",
"   },
"   triggers_blacklist = {
"     -- list of mode / prefixes that should never be hooked by WhichKey
"     -- this is mostly relevant for keymaps that start with a native binding
"     i = { "j", "k" },
"     v = { "j", "k" },
"   },
"   -- disable the WhichKey popup for certain buf types and file types.
"   -- Disabled by default for Telescope
"   disable = {
"     buftypes = {},
"     filetypes = {},
"   }
" })
"
" EOF

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

lua << EOF

require('smart-tab').setup({
    -- default options:
    -- list of tree-sitter node types to filter
    skips = { "string_content" },
    -- default mapping, set `false` if you don't want automatic mapping
    mapping = "<tab>",
    -- filetypes to exclude
    exclude_filetypes = {}
})

vim.keymap.set("n", "<tab>", require('smart-tab').smart_tab)

EOF

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
" {{{ - functions

" {{{ - s:xf_wiki_init

" {{{   - s:xf_wiki_init()

func! s:xf_wiki_init() abort
  call <SID>xf_wiki_state_fold_init()

  call <SID>xf_wiki_init_mappings()
  call <SID>xf_wiki_init_folding()
  call <SID>xf_wiki_init_syntax_sync()

  call <SID>xf_wiki_log_info('custom wiki init complete')
endfunc

" }}}
" {{{     - s:xf_wiki_init_syntax_sync()
" Useful to fix highlighting in large files

func! s:xf_wiki_init_syntax_sync() abort
  setlocal syntax sync fromstart
endfunc

" }}}
" {{{     - s:xf_wiki_init_mappings()

func! s:xf_wiki_init_mappings() abort
  noremap <buffer> <silent> <space>wl <SID>xf_wiki_links_generate()
  noremap <buffer> <expr> <silent> fff <SID>xf_wiki_folds_toggle()
endfunc

" }}}
" {{{     - s:xf_wiki_init_folding()

func! s:xf_wiki_init_folding() abort
  setlocal foldenable
  setlocal foldlevel=20
  setlocal foldmethod=expr
  setlocal foldexpr=s:xf_wiki_folds_expr
endfunc

" }}}

" }}}
" {{{     - s:xf_wiki_links

" {{{       - s:xf_wiki_links_validate_paths(path, def_path)

func! s:xf_wiki_links_validate_paths(paths) abort
  let s:paths = maktaba#ensure#IsList(a:paths)

  for s:path in s:paths
    exec maktaba#ensure#IsFile(s:path)
  endfor

  return v:true
endfunc

" }}}
" {{{       - s:xf_wiki_links_prepare_paths(path, def_path)

func! s:xf_wiki_links_prepare_paths(path, def_path) abort
  let s:arg_path = maktaba#ensure#IsString(a:path)
  let s:def_path = maktaba#ensure#IsString(a:def_path)
  let s:path = empty(s:arg_path) ? s:def_path || s:arg_path

  call <SID>xf_wiki_links_validate_paths([ s:path ])

  return s:path
endfunc

" }}}
" {{{       - s:xf_wiki_links_generate(params)

" TODO: Consider refactoring
func! s:xf_wiki_links_generate(params) abort
  let s:params = maktaba#ensure#isDictionary(a:params)
  let s:write = maktaba#ensure#isBool(s:params.write || 1)
  let s:header = maktaba#ensure#isBool(s:params.header || 1)
  let s:arg_path = maktaba#ensure#IsString(s:params.path)
  let s:def_path = maktaba#ensure#isString(fnamemodify(@%, ':h'))
  let s:path = s:xf_wiki_links_prepare_paths(s:arg_path, s:def_path)

  if s:header == 1
    let s:header_text = s:params.header_label || g:vimwiki#toc#header
    let s:header_label = maktaba#ensure#isString(s:header_text)
  else
    let s:header_label = v:null
  endif

  let s:rel_path = fnamemodify(s:path, ':h')
  let s:rel_file_paths = split(globpath(s:rel_path, '*'), '\n')
  let s:rel_file_count = len(s:rel_file_paths)

  if s:rel_file_count == 0
    return
  endif

  if s:write
    call appendbufline(bufname('%'), line('.'), s:rel_file_paths)

    call <SID>xf_wiki_log_info('wrote %d links', s:rel_file_count)
  else
    call <SID>xf_wiki_log_info('found %d links', s:rel_file_count)

    for s:file_path, s:i in s:rel_file_paths
      call <SID>xf_wiki_log_success(' -> (%d/%d) %s', s:i + 1, s:rel_file_count, s:file_path)
    endfor
  endif
endfunc

" }}}

" }}}
" {{{     - s:xf_wiki_util

" {{{        - s:xf_wiki_util_match_header_line(line)

func! s:xf_wiki_util_match_header_line(line) abort
  let s:regex = g:x#wiki#regex#header_depth
  let s:line = maktaba#ensure#IsString(a:line)

  return matchstr(s:line, s:regex)
endfunc

" }}}
" {{{        - s:xf_wiki_util_match_blank_line(line)

func! s:xf_wiki_util_match_blank_line(line) abort
  let s:regex = g:x#wiki#regex#blank_line
  let s:line = maktaba#ensure#IsString(a:line)

  return matchstr(s:line, s:regex)
endfunc

" }}}
" {{{        - s:xf_wiki_util_get_header_depth(line)

func! s:xf_wiki_util_get_header_depth(line) abort
  let s:regex = g:x#wiki#fold#header_depth_regex
  let s:line = maktaba#ensure#IsString(a:line)

  return strlen(s:xf_wiki_util_match_header_line(s:line))
endfunc

" }}}
" {{{        - s:xf_wiki_util_is_line_blank(line)

func! s:xf_wiki_util_is_line_blank(line) abort
  let s:line = maktaba#ensure#IsString(a:line)
  let s:regex = g:x#wiki#fold#header_depth_regex

  return s:line =~? s:regex
endfunc

" }}}

" }}}
" {{{   - s:xf_wiki_state

" {{{   - s:xf_wiki_state_fold

" {{{     - s:xf_wiki_state_fold(state)

func! s:xf_wiki_state_fold(state) abort
  if empty(a:state)
    return s:xf_wiki_state_fold
  endif

  let l:state = maktaba#ensure#IsString(a:state)
  let l:current_state = g:x#wiki#state#fold

  if maktaba#value#IsEqual(l:state, l:current_state)
    call <SID>xf_wiki_log_debug('fold state unchaged')
    return
  endif

  let s:xf_wiki_state_fold = X_wiki_state_fold_verify(l:state)

  call <SID>xf_wiki_log_debug('wiki fold state now %s', X_wiki_state_fold)

  return X#wiki#state#fold
endfunc

" }}}
" {{{     - s:xf_wiki_state_fold_init()

func! s:xf_wiki_state_fold_init() abort
  let g:x#wiki#state#fold = g:x#wiki#state#fold#default
endfunc

" }}}
" {{{     - s:xf_wiki_state_fold_verify(state)

func! s:xf_wiki_state_fold_verify(state) abort
  let l:state = maktaba#ensure#IsString(a:state)
  let l:valid_states = g:x#wiki#state#fold#valid.Values()

  return maktaba#ensure#IsIn(l:state, l:valid_states)
endfunc

" }}}

" }}}

" }}}
" {{{   - s:xf_wiki_log

const g:xf#wiki#log = maktaba#log#Logger('wiki')

" {{{     - s:xf_wiki_log_debug(...)

func! s:xf_wiki_log_debug(...) abort
  call g:xf#wiki#log.LogDebug(a:000)
endfunc

" }}}
" {{{     - s:xf_wiki_log_info(...)

func! s:xf_wiki_log_info(...) abort
  call g:xf#wiki#log.LogInfo(a:000)
endfunc

" }}}
" {{{     - s:xf_wiki_log_warn(...)

func! s:xf_wiki_log_warn(...) abort
  call g:xf#wiki#log.LogWarn(a:000)
endfunc

" }}}
" {{{     - s:xf_wiki_log_error(...)

func! s:xf_wiki_log_error(message, ...) abort
  call g:xf#wiki#log.LogError(a:000)
endfunc

" }}}
" {{{     - s:xf_wiki_log_severe(...)

func! s:xf_wiki_log_severe(...) abort
  call g:xf#wiki#log.LogSevere(a:000)
endfunc

" }}}

" }}}
" {{{   - s:xf_wiki_folds

" {{{     - s:xf_wiki_folds_toggle()

func! s:xf_wiki_folds_toggle() abort
  let l:state_id = g:x#wiki#state#fold
  let l:state_name = g:x#wiki#state#fold#valid.Name(a:state_name)

  call <SID>xf_wiki_state_fold_verify(l:state_name)

  if l:state_name == g:x#wiki#state#fold#valid.INITIAL
    call <SID>xf_wiki_folds_initial()
  elseif l:state_name == g:x#wiki#state#fold#valid.EXPANDED
    call <SID>xf_wiki_folds_expanded()
  elseif l:state_name == g:x#wiki#state#fold#valid.COLLAPSED
    call <SID>xf_wiki_folds_collapsed()
  elseif l:state_name == g:x#wiki#state#fold#valid.DIRTY
    call <SID>xf_wiki_folds_dirty()
  endif
endfunc

" }}}
" {{{     - s:xf_wiki_folds_initial()

func! s:xf_wiki_folds_initial() abort
  call <SID>xf_folds_expand()
  call <SID>xf_wiki_state_fold(g:x_wiki_state_fold_valid.EXPANDED)
endfunc

" }}}
" {{{     - s:xf_wiki_folds_expanded()

func! s:xf_wiki_folds_expanded() abort
  call <SID>xf_folds_collapse()
  call <SID>xf_wiki_state_fold(g:x_wiki_state_fold_valid.COLLAPSED)
endfunc

" }}}
" {{{     - s:xf_wiki_folds_collapsed()

func! s:xf_wiki_folds_collapsed() abort
  call <SID>xf_folds_expand()
  call <SID>xf_wiki_state_fold(g:x_wiki_state_fold_valid.EXPANDED)
endfunc

" }}}
" {{{     - s:xf_wiki_folds_dirty()

func! s:xf_wiki_folds_dirty() abort
  call <SID>xf_folds_collapse()
  call <SID>xf_folds_expand()
  call <SID>xf_wiki_state_fold(g:x_wiki_state_fold_valid.INIT)
endfunc

" }}}
" {{{     - s:xf_wiki_folds_expr(lnum)

" TODO: Add validation to check incoming line number
" TODO: Change returned strings to constants/an enum
func! s:xf_wiki_folds_expr(line_n) abort
  let s:line_n = maktaba#ensure#IsNumber(a:line_n)
  let s:line = maktaba#ensure#IsString(trim(getline(s:line_n)))

  if empty(s:line)
    return '='
  endif

  if s:xf_wiki_util_match_header_line(s:line)
    let s:indent_depth = s:xf_wiki_util_get_header_depth(s:line)

    if s:indent_depth > 0
      return '>' . s:indent_depth
    endif

    return '='
  endif

  let s:is_blank_line = s:xf_wiki_util_match_blank_line(s:line)

  if not s:is_blank_line
    return
  endif

  let s:next_line_n = s:line_n + 1

  " Out of bounds
  if s:next_line_n > getline('$')
    return '='
  endif

  " Check if blank line follows header
  let s:next_line = getline(s:next_line_n)
  let s:next_line_is_header = s:xf_wiki_util_match_header_line(s:next_line)

  if s:next_line_n <= s:line_count && s:next_line_is_header
    return -1
  endif

  return '='
endfunc

" }}}

" }}}

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
" {{{ themery

lua << EOF

require("themery").setup({
  themeConfigFile = "/home/f3rno64/.config/nvim/lua/settings/theme.lua",
  livePreview = true,
  themes = {{
    name = "fruchtig",
    colorscheme = "fruchtig",
    before = [[
      vim.opt.background = "light"
    ]],
  }, {
   name = "shirotelin",
    colorscheme = "shirotelin",
    before = [[
      vim.opt.background = "light"
    ]],
  }, {
    name = "onehalflight",
    colorscheme = "onehalflight",
    before = [[
      vim.opt.background = "light"
    ]],
  }, {
    name = "paper",
    colorscheme = "paper",
    before = [[
      vim.opt.background = "light"
    ]],
  }, {
    name = "tempus-day",
    colorscheme = "tempus_day",
    before = [[
      vim.opt.background = "light"
    ]],
  }, {
    name = "base16-one-light",
    colorscheme = "base16-one-light",
    before = [[
      vim.opt.background = "light"
    ]],
  }, {
    name = "base16-railscasts",
    colorscheme = "base16-railscasts",
    before = [[
      vim.opt.background = "light"
    ]],
  }, {
    name = "base16-github",
    colorscheme = "base16-github",
    before = [[
      vim.opt.background = "light"
    ]],
  }, {
    name = "base16-mexico-light",
    colorscheme = "base16-mexico-light",
    before = [[
      vim.opt.background = "light"
    ]],
  }, {
    name = "base16-still-alive",
    colorscheme = "base16-still-alive",
    before = [[
      vim.opt.background = "light"
    ]],
  }, {
    name = "base16-unikitty-light",
    colorscheme = "base16-unikitty-light",
    before = [[
      vim.opt.background = "light"
    ]],
  }, {
    name = "toast light",
    colorscheme = "toast",
    before = [[
      vim.opt.background = "light"
    ]],
  }, {
    name = "toast dark",
    colorscheme = "toast",
    before = [[
      vim.opt.background = "dark"
    ]],
  }, {
    name = "leaf light",
    colorscheme = "leaf",
    before = [[
      vim.opt.background = "light"
    ]],
  }, {
    name = "leaf dark",
    colorscheme = "leaf",
    before = [[
      vim.opt.background = "dark"
    ]],
  }, {
    name = "PaperColor light",
    colorscheme = "PaperColor",
    before = [[
      vim.opt.background = "light"
    ]],
  }, {
    name = "PaperColor dark",
    colorscheme = "PaperColor",
    before = [[
      vim.opt.background = "dark"
    ]],
  }, {
    name = "catppuccin-latte light",
    colorscheme = "catppuccin-latte",
    before = [[
      vim.opt.background = "light"
    ]],
  }, {
    name = "catppuccin-latte dark",
    colorscheme = "catppuccin-latte",
    before = [[
      vim.opt.background = "dark"
    ]],
  }, {
    name = "newpaper light",
    colorscheme = "newpaper",
    before = [[
      vim.opt.background = "light"
    ]],
  }, {
    name = "newpaper dark",
    colorscheme = "newpaper",
    before = [[
      vim.opt.background = "dark"
    ]],
  }, {
    name = "lucid",
    colorscheme = "lucid",
    before = [[
      vim.opt.background = "dark"
    ]],
  }, {
    name = "base16-ayu-mirage",
    colorscheme = "base16-ayu-mirage",
    before = [[
      vim.opt.background = "dark"
    ]],
  }, {
    name = "vn-night",
    colorscheme = "vn-night",
    before = [[
      vim.opt.background = "dark"
    ]],
  }, {
    name = "base16-summercamp",
    colorscheme = "base16-summercamp",
    before = [[
      vim.opt.background = "dark"
    ]],
  }, {
    name = "base16-tokyodark-terminal",
    colorscheme = "base16-tokyodark-terminal",
    before = [[
      vim.opt.background = "dark"
    ]],
  }, {
    name = "sherbet",
    colorscheme = "sherbet",
    before = [[
      vim.opt.background = "dark"
    ]],
  }, {
    name = "slate",
    colorscheme = "slate",
    before = [[
      vim.opt.background = "dark"
    ]],
  }, {
    name = "murphy",
    colorscheme = "murphy",
    before = [[
      vim.opt.background = "dark"
    ]],
  }, {
    name = "gruvbox-baby",
    colorscheme = "gruvbox-baby",
    before = [[
      vim.opt.background = "dark"
    ]],
  }, {
    name = "nightly",
    colorscheme = "nightly",
    before = [[
      vim.opt.background = "dark"
    ]],
  }, {
    name = "tender",
    colorscheme = "tender",
    before = [[
      vim.opt.background = "dark"
    ]],
  }, {
    name = "sherbet",
    colorscheme = "sherbet",
    before = [[
      vim.opt.background = "dark"
    ]],
  }, {
    name = "dogrun",
    colorscheme = "dogrun",
    before = [[
      vim.opt.background = "dark"
    ]],
  }, {
    name = "tempus_future",
    colorscheme = "tempus_future",
    before = [[
      vim.opt.background = "dark"
    ]],
  }, {
    name = "tempus_night",
    colorscheme = "tempus_night",
    before = [[
      vim.opt.background = "dark"
    ]],
  }, {
    name = "tempus_warp",
    colorscheme = "tempus_warp",
    before = [[
      vim.opt.background = "dark"
    ]],
  }, {
    name = "desertink",
    colorscheme = "desertink",
    before = [[
      vim.opt.background = "dark"
    ]],
  }, {
    name = "lighthaus",
    colorscheme = "lighthaus",
    before = [[
      vim.opt.background = "dark"
    ]],
  }, {
    name = "midnight",
    colorscheme = "midnight",
    before = [[
      vim.opt.background = "dark"
    ]],
  }, {
    name = "base16-material-palenight",
    colorscheme = "base16-material-palenight",
    before = [[
      vim.opt.background = "dark"
    ]],
  }, {
    name = "base16-horizon-terminal-dark",
    colorscheme = "base16-horizon-terminal-dark",
    before = [[
      vim.opt.background = "dark"
    ]],
  }, {
    name = "base16-irblack",
    colorscheme = "base16-irblack",
    before = [[
      vim.opt.background = "dark"
    ]],
  }, {
    name = "tequila-sunrise",
    colorscheme = "tequila-sunrise",
    before = [[
      vim.opt.background = "dark"
    ]],
  }, {
    name = "kanagawa",
    colorscheme = "kanagawa",
    before = [[
      vim.opt.background = "dark"
    ]],
  }, {
    name = "material",
    colorscheme = "material",
    before = [[
      vim.opt.background = "dark"
    ]],
  }, {
    name = "nightfox",
    colorscheme = "nightfox",
    before = [[
      vim.opt.background = "dark"
    ]],
  }, {
    name = "oxocarbon",
    colorscheme = "oxocarbon",
    before = [[
      vim.opt.background = "dark"
    ]],
  }, {
    name = "base16-gruvbox-dark-medium",
    colorscheme = "base16-gruvbox-dark-medium",
    before = [[
      vim.opt.background = "dark"
    ]],
  }, {
    name = "abscs",
    colorscheme = "abscs",
    before = [[
      vim.opt.background = "dark"
    ]],
  }, {
    name = "tokyonight-night",
    colorscheme = "tokyonight-night",
    before = [[
      vim.opt.background = "dark"
    ]],
  }, {
    name = "zephyr",
    colorscheme = "zephyr",
    before = [[
      vim.opt.background = "dark"
    ]],
  }, {
    name = "melange",
    colorscheme = "melange",
    before = [[
      vim.opt.background = "dark"
    ]],
  }, {
    name = "aurora",
    colorscheme = "aurora",
    before = [[
      vim.opt.background = "dark"
    ]],
  }, {
    name = "one-nvim",
    colorscheme = "one-nvim",
    before = [[
      vim.opt.background = "dark"
    ]],
  }, {
    name = "falcon",
    colorscheme = "falcon",
    before = [[
      vim.opt.background = "dark"
    ]],
  }, {
    name = "calvera",
    colorscheme = "calvera",
    before = [[
      vim.opt.background = "dark"
    ]],
  }, {
    name = "everblush",
    colorscheme = "everblush",
    before = [[
      vim.opt.background = "dark"
    ]],
  }}
})

EOF

" }}}
