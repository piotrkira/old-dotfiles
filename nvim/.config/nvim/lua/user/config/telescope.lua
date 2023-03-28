require("telescope").setup {
  defaults = {
    file_ignore_patterns = {"node_modules", "lib", "__pycache__"}
  },
	extensions = {
		["ui-select"] = {
			require("telescope.themes").get_dropdown {
				-- even more opts
			}
		}
	}
}
require("telescope").load_extension "ui-select"
