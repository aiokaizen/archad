local options = require "plugins.configs.treesitter"

options.ensure_installed = {
  "lua", "vim", "vimdoc",
  "python", "javascript", "scss", "rust",
  "html", "css", "rst"
}

return options
