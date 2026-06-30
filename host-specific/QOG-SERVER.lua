require('fzf-lua').setup({
	previewers = {
		git_diff = {
			-- https://github.com/ibhagwan/fzf-lua/issues/2747
			cmd_modified = "git diff --color HEAD --"
		}
	}
})
