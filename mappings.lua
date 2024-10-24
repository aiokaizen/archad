local M = {}

M.general = {
  n = {
    ["<A-j>"] = { "<C-E>", "Scroll down one line" },
    ["<A-k>"] = { "<C-Y>", "Scroll up one line" }
  }
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = { "<cmd> DapToggleBreakpoint <CR>" }
  }
}

M.dap_python = {
  plugin = true,
  n = {
    ["<leader>dpr"] = {
      function()
        require('dap-python').test_method()
      end
    }
  }
}

M.vim_tmux_navigator = {
  n = {
    ["<C-h>"] = { "<cmd>TmuxNavigateLeft<cr>" },
    ["<C-j>"] = { "<cmd>TmuxNavigateDown<cr>" },
    ["<C-k>"] = { "<cmd>TmuxNavigateUp<cr>" },
    ["<C-l>"] = { "<cmd>TmuxNavigateRight<cr>" },
    ["<C-\\>"] = { "<cmd>TmuxNavigatePrevious<cr>" },
  },
}

return M
