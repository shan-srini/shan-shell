-- Sensible default options
local opt = vim.opt

opt.number = true           -- Show line numbers
opt.mouse = "a"             -- Enable mouse support
opt.clipboard = "unnamedplus" -- Sync with system clipboard
opt.tabstop = 4             -- Number of spaces tabs count for
opt.shiftwidth = 4          -- Number of spaces for autoindent
opt.expandtab = true        -- Use spaces instead of tabs
opt.smartindent = true      -- Intelligent indentation
opt.wrap = false            -- Disable line wrapping
opt.undofile = true         -- Persistent undo
opt.ignorecase = true       -- Ignore case in search
opt.smartcase = true        -- Smart case matching
opt.termguicolors = true    -- True color support
opt.scrolloff = 8           -- Keep at least 8 lines above/below cursor
opt.signcolumn = "yes"      -- Always show sign column
opt.updatetime = 300        -- Faster completion and better gitsigns experience
opt.splitright = true       -- Horizontal splits go right
opt.splitbelow = true       -- Vertical splits go below
opt.showtabline = 2         -- Always show tab bar

-- Folding (Collapse current block)
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldlevel = 99          -- Start with all folds open
opt.foldenable = true
opt.fillchars = {
  eob = " ", -- hide ~ at end of buffer
  fold = " ",
  foldopen = "▾",
  foldsep = " ",
  foldclose = "▸",
  vert = "│",
  horiz = "─",
  horizup = "┴",
  horizdown = "┬",
  vertleft = "┤",
  vertright = "├",
  verthoriz = "┼",
}

-- Fix terminal colors
vim.api.nvim_create_autocmd("TermOpen", {
  callback = function()
    vim.opt_local.winhl = "Normal:Normal"
  end,
})
