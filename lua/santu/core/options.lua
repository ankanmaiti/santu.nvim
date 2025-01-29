-- UI and Display Options
vim.wo.number = true           -- Make line numbers default
vim.o.relativenumber = true    -- Set relative numbered lines
vim.o.cursorline = false       -- Highlight the current line
vim.o.wrap = false             -- Display lines as one long line
vim.o.linebreak = true         -- Companion to wrap, don't split words
vim.o.numberwidth = 4          -- Set number column width
vim.wo.signcolumn = 'yes'      -- Keep signcolumn on by default
vim.o.termguicolors = true     -- Enable highlight groups
vim.o.laststatus = 0           -- Disable the statusline

-- Splitting and Window Behavior
vim.o.splitbelow = true        -- Force horizontal splits to go below current window
vim.o.splitright = true        -- Force vertical splits to go to the right of current window
vim.o.scrolloff = 4            -- Minimal screen lines to keep above and below cursor
vim.o.sidescrolloff = 8        -- Minimal screen columns either side of cursor if wrap is false

-- Search and Case Sensitivity
vim.o.ignorecase = true        -- Case-insensitive searching UNLESS \C or capital in search
vim.o.smartcase = true         -- Smart case
vim.o.hlsearch = true          -- Set highlight on search

-- Indentation and Tabs
vim.o.autoindent = true        -- Copy indent from current line when starting new one
vim.o.smartindent = true       -- Make indenting smarter
vim.o.shiftwidth = 4           -- Number of spaces for indentation
vim.o.tabstop = 4              -- Insert n spaces for a tab
vim.o.softtabstop = 4          -- Spaces a tab counts for during editing
vim.o.expandtab = true         -- Convert tabs to spaces
vim.o.backspace = 'indent,eol,start'  -- Allow backspace on indent, end of line, start

-- Editing and Completion
vim.o.completeopt = 'menuone,noselect'  -- Better completion experience
vim.o.pumheight = 10           -- Pop up menu height
vim.o.timeoutlen = 500         -- Time to wait for a mapped sequence to complete
vim.o.updatetime = 250         -- Decrease update time
vim.opt.shortmess:append 'c'   -- Reduce completion menu messages
vim.opt.iskeyword:append '-'   -- Recognize hyphenated words in searches

-- File and System Options
vim.o.fileencoding = 'utf-8'   -- Encoding written to file
vim.o.clipboard = 'unnamedplus'  -- Sync clipboard between OS and Neovim
vim.o.mouse = 'a'              -- Enable mouse mode
vim.o.swapfile = false         -- Don't create swapfile
vim.o.backup = false           -- Don't create backup file
vim.o.writebackup = false      -- Don't allow editing files being edited by another program
vim.o.undofile = true          -- Save undo history

-- Interface and Behavior
vim.o.showmode = false         -- Don't show mode in command line
vim.o.cmdheight = 1            -- Command line height
vim.o.showtabline = 0          -- Doesn't show tabs
vim.o.whichwrap = 'bs<>[]hl'   -- Allowed horizontal keys to travel to prev/next line
vim.o.conceallevel = 0         -- Show `` in markdown files

-- Text Formatting
vim.o.breakindent = true       -- Enable break indent
vim.opt.formatoptions:remove { 'c', 'r', 'o' }  -- Customize auto-commenting behavior

-- Runtime Path
vim.opt.runtimepath:remove '/usr/share/vim/vimfiles'  -- Separate Vim plugins from Neovim
