return {
  -- Telescope (Fuzzy Finder)
  {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    version = false, -- telescope did not have a release in a long time
    dependencies = {
      "nvim-lua/plenary.nvim",
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        enabled = vim.fn.executable("make") == 1,
        config = function()
          require("telescope").load_extension("fzf")
        end,
      },
    },
    keys = {
      { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
      { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live Grep" },
      { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
      { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help Tags" },
    },
    opts = {
      defaults = {
        borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
        initial_mode = "normal",
        preview = {
          mime_hook = function(filepath, bufnr, opts)
            local is_image = function(filepath)
              local image_extensions = { "png", "jpg", "jpeg", "gif", "webp" }
              local split_path = vim.split(filepath:lower(), ".")
              local extension = split_path[#split_path]
              return vim.tbl_contains(image_extensions, extension)
            end
            if is_image(filepath) then
              local command = { "catimg", filepath }
              return command
            end
            return { "cat", filepath }
          end,
        },
        mappings = {
          i = {
            ["<C-j>"] = "move_selection_next",
            ["<C-k>"] = "move_selection_previous",
          },
        },
      },
    },
  },

  -- Commenting
  {
    "numToStr/Comment.nvim",
    opts = {},
    event = "VeryLazy",
  },
}
