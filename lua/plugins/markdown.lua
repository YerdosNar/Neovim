return {
	{
		"iamcco/markdown-preview.nvim",
		build = "cd app && npm install",
		ft = { "markdown" }, -- Only load for markdown files
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview" },
	}
}
