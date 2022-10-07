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
