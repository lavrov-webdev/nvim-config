return require'packer'.startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  --View
  use 'kyazdani42/nvim-web-devicons'
  use "EdenEast/nightfox.nvim" --theme
  use 'onsails/lspkind.nvim' --Suggestion icons
  use 'nvim-lualine/lualine.nvim' --Status line

  use 'kyazdani42/nvim-tree.lua'

  --Buffers
  use 'romgrk/barbar.nvim'

  --Treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ":TSUpdate" }
  use "windwp/nvim-ts-autotag"

  use 'abecodes/tabout.nvim' --Tabout
  use 'windwp/nvim-autopairs' --Autopair
  use "terrortylor/nvim-comment" --Comments
  use "numToStr/FTerm.nvim" --Floatterm
  use "kylechui/nvim-surround" --Surround

  --LSP installer
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
}

  --LSP config
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  use 'ray-x/lsp_signature.nvim' --Function signatures

  --Telescope
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
end)
