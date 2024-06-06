return {
  {
    "folke/tokyonight.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- load the colorscheme here
      require("tokyonight").setup({
	      style = "night",
	      on_colors = function(colors)
	      	colors.bg = "#0A0C10"
	      end
      })
      vim.cmd([[colorscheme tokyonight-night]])
   end,
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" }
  }
}
