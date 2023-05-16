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

" }}}
" {{{ telescope

Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.x' }
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
Plug 'nvim-telescope/telescope-ui-select.nvim'
Plug 'aznhe21/actions-preview.nvim'

" }}}
" {{{ treesitter

Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
Plug 'yioneko/nvim-yati', { 'tag': '*' }
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
Plug 'j-hui/fidget.nvim'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'jay-babu/mason-null-ls.nvim'
Plug 'RubixDev/mason-update-all'
Plug 'dnlhc/glance.nvim'

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
" {{{ other

Plug 'dnlhc/glance.nvim'
Plug 'wincent/terminus'
Plug 'stevearc/dressing.nvim'
Plug 'jghauser/mkdir.nvim'
Plug 'tpope/vim-eunuch'
Plug 'beauwilliams/focus.nvim'
Plug 'jinh0/eyeliner.nvim'
Plug 'github/copilot.vim'
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
Plug 'glepnir/dashboard-nvim'
Plug 'ojroques/nvim-bufdel'
Plug 'smjonas/inc-rename.nvim'
Plug 'numToStr/FTerm.nvim'
Plug 'winston0410/cmd-parser.nvim'
Plug 'winston0410/range-highlight.nvim'
Plug 'mawkler/modicator.nvim'
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
Plug 'yasukotelin/shirotelin'
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

set background=light

" Light color schemes
" colorscheme fruchtig
" colorscheme shirotelin
" colorscheme onehalflight
" colorscheme paper
" colorscheme tempus_day

" Light and dark color schemes
" colorscheme leaf
" colorscheme PaperColor
" colorscheme catppuccin-latte
colorscheme newpaper

" Dark color schemes
" colorscheme dogrun
" colorscheme tempus_future
" colorscheme tempus_night
" colorscheme tempus_warp
" colorscheme desertink
" colorscheme lighthaus
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

require("mason-lspconfig").setup()
require("mason-lspconfig").setup_handlers {
  function (server_name)
    require("lspconfig")[server_name].setup {}
  end
}

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
  sources = {
    null_ls.builtins.diagnostics.tsc,
    null_ls.builtins.diagnostics.jsonlint,
    null_ls.builtins.diagnostics.markdownlint,
    null_ls.builtins.diagnostics.shellcheck,
    null_ls.builtins.diagnostics.pylint,
    null_ls.builtins.diagnostics.eslint
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
      }
    },
    lualine_x = {"encoding", "fileformat", "filetype"},
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
" {{{ fidget

lua require("fidget").setup{}

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

lua require("dashboard").setup()

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

lua require("modicator").setup()

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
