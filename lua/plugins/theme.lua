return {
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        transparent = true,
        italic_comments = true,
        hide_fillchars = false,
        borderless_telescope = true,
        terminal_colors = true,
    },
    config = function(_, opts)
      require("cyberdream").setup(opts)
      vim.cmd("colorscheme cyberdream")

      -- Soften diff highlights
      vim.api.nvim_set_hl(0, "DiffAdd", { bg = "#1c2a1c" })
      vim.api.nvim_set_hl(0, "DiffDelete", { bg = "#2a1c1c" })
      vim.api.nvim_set_hl(0, "DiffChange", { bg = "#1c1c2a" })
      vim.api.nvim_set_hl(0, "DiffText", { bg = "#2f2f4a" })

      -- White split lines
      vim.api.nvim_set_hl(0, "VertSplit", { fg = "#ffffff" })
    end,
  },
}
