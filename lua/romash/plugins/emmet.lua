return {
  "mattn/emmet-vim",
  config = function()
    vim.g.emmet_include_languages = {
      html = {'html', 'vue', 'jsx', 'tsx'},
      css = {'css', 'scss', 'sass', 'less'},
      js = {'javascript', 'typescript', 'vue'},
      json = {'json'},
    }

    local keymap = vim.keymap

    vim.g.emmet_leader_key = '<C-y>'

    -- Настройка горячих клавиш
    -- keymap.set('i', '<с-Tab>,', '<Plug>(emmet-expand-abbr)', { noremap = true, silent = true })
    -- добавить автокомплит в режиме вставки
    keymap.set('i', '<C-y>,', '<Plug>(emmet-expand-abbr)', { noremap = true, silent = true })
  end,
}
