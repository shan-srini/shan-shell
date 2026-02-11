return {
  -- Test Explorer
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "nvim-neotest/nvim-nio",
      -- Adapters
      "haydenmeade/neotest-jest",
      "nvim-neotest/neotest-python",
      "rouge8/neotest-rust",
      "marilari88/neotest-vitest",
      "Nsidorenco/neotest-vstest",
    },
    keys = {
      { "<leader>tt", function() require("neotest").run.run() end, desc = "Run Nearest" },
      { "<leader>tf", function() require("neotest").run.run(vim.fn.expand("%")) end, desc = "Run File" },
      { "<leader>ts", function() require("neotest").summary.toggle() end, desc = "Toggle Summary" },
      { "<leader>to", function() require("neotest").output.open({ enter = true, auto_close = true }) end, desc = "Show Output" },
      { "<leader>tO", function() require("neotest").output_panel.toggle() end, desc = "Toggle Output Panel" },
      { "<leader>tS", function() require("neotest").run.stop() end, desc = "Stop" },
    },
    config = function()
      require("neotest").setup({
        adapters = {
          require("neotest-vstest"),
          require("neotest-vitest"),
          require("neotest-jest")({
            jestCommand = "npm test --",
            env = { CI = "true" },
            cwd = function() return vim.fn.getcwd() end,
          }),
          require("neotest-python")({ dap = { adapter = "debugpy" } }),
          require("neotest-rust"),
        },
        status = { virtual_text = true },
        output = { open_on_run = true },
      })
    end,
  },
}
