-- Entry point for Neovim configuration

-- Set leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Initialize options
require("config.options")

-- Bootstrap lazy.nvim
require("config.lazy")

-- Initialize keymaps
require("config.keymaps")

-- Set line number color
vim.api.nvim_set_hl(0, 'LineNr', { fg = '#9fc5e8' })
