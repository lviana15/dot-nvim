return {
  'tpope/vim-fugitive',

  config = function()
    vim.keymap.set('n', '<leader>gs', vim.cmd.Git, { desc = 'Git status' })
    vim.keymap.set('n', '<leader>gd', vim.cmd.Gvdiffsplit, { desc = 'Vertical diff' })
  end,
}
