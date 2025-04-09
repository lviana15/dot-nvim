return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',

  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  },

  config = function()
    require('telescope').setup({
      defaults = {
        file_ignore_patterns = {
          "node_modules",
          "target"
        }
      },
      extensions = {
        fzf = {}
      },
    })

    require('telescope').load_extension('fzf')

    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
    vim.keymap.set('n', '<leader>fl', builtin.live_grep, {})
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
    vim.keymap.set('n', '<leader>fw', function()
      local word = vim.fn.expand('<cword>')
      builtin.grep_string({ search = word })
    end)
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
  end
}
