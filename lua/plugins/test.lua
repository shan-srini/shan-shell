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
    },
    keys = {
      { "<leader>tt", function() require("neotest").run.run() end, desc = "Run Nearest" },
      { "<leader>tf", function() require("neotest").run.run(vim.fn.expand("%")) end, desc = "Run File" },
      { "<leader>ts", function() require("neotest").summary.toggle() end, desc = "Toggle Summary" },
      { "<leader>to", function() require("neotest").output.open({ enter = true, auto_close = true }) end, desc = "Show Output" },
      { "<leader>tO", function() require("neotest").output_panel.toggle() end, desc = "Toggle Output Panel" },
      { "<leader>tS", function() require("neotest").run.stop() end, desc = "Stop" },
    },
    opts = function()
      local adapters = {}
      
      -- Helper to safely load adapters
      local function add_adapter(name, config)
        local ok, adapter = pcall(require, name)
        if ok then
          if config then
            table.insert(adapters, adapter(config))
          else
            table.insert(adapters, adapter)
          end
        end
      end

      add_adapter("neotest-jest", {
        jestCommand = "npm test --",
        jest_test_discovery_systems = {"jest"},
        env = { CI = "true" },
        cwd = function() return vim.fn.getcwd() end,
      })
      add_adapter("neotest-python", { dap = { adapter = "debugpy" } })
      add_adapter("neotest-vitest")
      add_adapter("neotest-rust")

      return {
        adapters = adapters,
        status = { virtual_text = true },
        output = { open_on_run = true },
        quickfix = {
          open = function()
            if require("lazyvim.util").has("trouble.nvim") then
              require("trouble").open({ mode = "quickfix" })
            else
              vim.cmd("copen")
            end
          end,
        },
      }
    end,
  },
}
