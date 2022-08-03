require'nvim-tree'.setup {
  diagnostics = {
    enable = true
  },
}

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<leader>nn', ':NvimTreeToggle<CR>', opts)
map('n', '<leader>nf', ':NvimTreeFindFile<CR>', opts)
