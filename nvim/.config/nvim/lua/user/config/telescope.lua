require("telescope").setup {
	extensions = {
		["ui-select"] = {
			require("telescope.themes").get_dropdown {
				-- even more opts
			}
		}
	}
}
_ = require("telescope").load_extension "ui-select"
