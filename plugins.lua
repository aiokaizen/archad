local plugins = {
  {
    "nvim-neotest/nvim-nio",
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = "mfussenegger/nvim-dap",
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")
      dapui.setup()
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end
  },
  {
    "mfussenegger/nvim-dap",
    config = function(_, opts)
      require("core.utils").load_mappings("dap")
    end
  },
  {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    dependencies = {
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
      "nvim-neotest/nvim-nio",
    },
    config = function(_, opts)
      local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
      require("dap-python").setup(path)
      require("core.utils").load_mappings("dap_python")
    end,
  },
  {
    "nvimtools/none-ls.nvim",
    ft = { "python" },
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
  {
    'anuvyklack/pretty-fold.nvim',
    event = "BufWinEnter", -- Load on entering a buffer
    config = function()
      require('pretty-fold').setup()
    end
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "lua", "vim", "vimdoc", "toml", "yaml",
        "python", "javascript", "scss", "rust",
        "html", "css", "rst", "json", "dockerfile"
      }
    }
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    event = "BufWinEnter", -- Load on entering a buffer
    config = function(_, opts)
      require('treesitter-context').setup({
        enable = true,
        multiline_threshold = 1,
        max_lines = 5,
      })
    end
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "black",
        "debugpy",
        "mypy",
        "ruff",
        "pyright",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    opts = function(_, conf)
      conf.defaults.mappings.i = {
        ["<C-k>"] = require("telescope.actions").move_selection_previous, -- move to prev result
        ["<C-j>"] = require("telescope.actions").move_selection_next,     -- move to next result
      }
      return conf
    end,
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = function(_, opts)
      opts.filters.custom = {
        "node_modules",
        ".git",
        ".*~",
        "__pycache__",
        ".mypy_cache",
        ".ruff_cache",
        ".null-ls*",
      }
      return opts
    end,
  },
  {
    "karb94/neoscroll.nvim",
    event = "BufWinEnter", -- Load on entering a buffer
    config = function()
      require "custom.configs.neoscroll"
    end
  },
  {
    "folke/zen-mode.nvim",
    event = "BufWinEnter", -- Load on entering a buffer
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  },
  {
    "linux-cultist/venv-selector.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
      "mfussenegger/nvim-dap",
      "mfussenegger/nvim-dap-python", --optional
      { "nvim-telescope/telescope.nvim", branch = "0.1.x", dependencies = { "nvim-lua/plenary.nvim" } },
    },
    lazy = false,
    branch = "regexp", -- This is the regexp branch, use this for the new version
    config = function()
      require("venv-selector").setup()
    end,
    keys = {
      { ",v", "<cmd>VenvSelect<cr>" },
    },
  },
  {
    'anuvyklack/pretty-fold.nvim',
    event = "BufWinEnter", -- Load on entering a buffer
    config = function()
      require('pretty-fold').setup()
    end
  },
  {
    "f-person/git-blame.nvim",
    -- load the plugin at startup
    event = "VeryLazy",
    -- Because of the keys part, you will be lazy loading this plugin.
    -- The plugin wil only load once one of the keys is used.
    -- If you want to load the plugin at startup, add something like event = "VeryLazy",
    -- or lazy = false. One of both options will work.
    opts = {
      -- your configuration comes here
      -- for example
      enabled = true,  -- if you want to enable the plugin
      message_template = " <summary> • <date> • <author> • <<sha>>", -- template for the blame message, check the Message template section for more options
      date_format = "%m-%d-%Y %H:%M:%S", -- template for the date, check Date format section for more options
      virtual_text_column = 1,  -- virtual text start column, check Start virtual text at column section for more options
    },
  }
  -- {
  --   'RRethy/vim-illuminate',
  --   config = function()
  --     require('illuminate').configure({
  --       providers = {
  --         'lsp',
  --         'treesitter',
  --         'regex',
  --       },
  --       -- You can add more configuration options here if needed
  --     })
  --   end,
  -- }
}
return plugins
