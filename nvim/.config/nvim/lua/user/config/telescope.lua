require("telescope").setup {
  defaults = {
    file_ignore_patterns = {"node_modules", "lib"}
  },
	extensions = {
		["ui-select"] = {
			require("telescope.themes").get_dropdown {
				-- even more opts
			}
		}
	}
}
_ = require("telescope").load_extension "ui-select"


--[[ local pickers = require "telescope.pickers"
local finders = require "telescope.finders"
local conf = require("telescope.config").values

local git_cite = function(opts)
  opts = opts or {}
  pickers.new(opts, {
    promt_title = "cit git commit",
    finder = finders.new_table {
      results = { "one", "two" }
    },
    sorter = conf.generic_sorter(opts),
  }):find()
end ]]
