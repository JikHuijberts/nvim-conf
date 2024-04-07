return {
  -- LSP Support
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},
    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
    {'L3MON4D3/LuaSnip'},
    {
  "klen/nvim-config-local",
      config = function()
        require('config-local').setup {
          -- Default options (optional)

          -- Config file patterns to load (lua supported)
          config_files = { ".nvim.lua", ".nvimrc", ".exrc" },

          -- Where the plugin keeps files data
          hashfile = vim.fn.stdpath("data") .. "/config-local",

          autocommands_create = true, -- Create autocommands (VimEnter, DirectoryChanged)
          commands_create = true,     -- Create commands (ConfigLocalSource, ConfigLocalEdit, ConfigLocalTrust, ConfigLocalIgnore)
          silent = false,             -- Disable plugin messages (Config loaded/ignored)
          lookup_parents = false,     -- Lookup config files in parent directories
        }
      end
    },
}

