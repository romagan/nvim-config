return {
	'tpope/vim-commentary',
  config = function()
    vim.api.nvim_create_autocmd("FileType", {
      pattern = "vue",
      callback = function()
        vim.bo.commentstring = "<!--%s-->"  -- дефолт для template
      end,
    })
  end,
}
