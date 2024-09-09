local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
end)
require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {'rust_analyzer'},
  handlers = {
    lsp_zero.default_setup,
    rust_analyzer = function() end,
    tailwindcss = function()
        require('lspconfig').tailwindcss.setup({
         -- There add every filetype you want tailwind to work on
          filetypes = {
            "css",
            "scss",
            "sass",
            "postcss",
            "html",
            "javascript",
            "javascriptreact",
            "typescript",
            "typescriptreact",
            "svelte",
            "vue",
            "rust",
          },
          init_options = {
            -- There you can set languages to be considered as different ones by tailwind lsp I guess same as includeLanguages in VSCod
            userLanguages = {
              rust = "html",
            },
          },
        })
    end,
  },
})
