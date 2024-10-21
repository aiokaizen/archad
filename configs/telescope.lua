local telescope_options = require "plugins.configs.telescope"

local telescope_actions = require("telescope.actions")

local mappings = {
  n = {
    ["q"] = require("telescope.actions").close,
  },
  i = {
    ["<C-k>"] = telescope_actions.move_selection_previous, -- move to prev result
    ["<C-j>"] = telescope_actions.move_selection_next,     -- move to next result
  },
}

telescope_options.defaults.mappings = mappings

return telescope_options
