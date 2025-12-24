return {
  "hrsh7th/cmp-nvim-lsp",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    { "antosha417/nvim-lsp-file-operations", config = true },
    { "folke/lazydev.nvim", opts = {} },
  },
  config = function()
    -- import cmp-nvim-lsp plugin
    local cmp_nvim_lsp = require("cmp_nvim_lsp")

    -- used to enable autocompletion (assign to every lsp server config)
    local capabilities = cmp_nvim_lsp.default_capabilities()

    vim.lsp.config("*", {
      capabilities = capabilities,
    })

    -- ←ESLint настройка
    local root_files = {
      "eslint.config.js",
      ".eslintrc*",
      "package.json"
    }
    vim.lsp.config('eslint', {
      settings = {
        validate = "on",
        lintArgs = {
          "--stdin",
          "--stdin-filename",
          vim.api.nvim_buf_get_name(0),
          "--format", "json",
        },
        lintStdin = true,
        lintDebounce = "250ms",
        lintIgnoreExitCode = true,
        useFlatConfig = true, -- для eslint.config.js
      },
      on_attach = function(client, bufnr)
        client.server_capabilities.documentFormattingProvider = false
      end,
      root_dir = function(fname)
        return vim.fs.root(fname, root_files)
      end,
    })
    vim.lsp.enable('eslint')
  end,
}
