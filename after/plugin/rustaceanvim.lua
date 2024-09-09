vim.g.rustaceanvim = {
    tools = {
    },

    server = {
        on_attach =function (client,bufnr)
        end,
        default_settings = {
            ['rust-analyzer'] = {
                cargo = {
                    allFeatures = true,
                },
            },
        },
    },
    dap = {
    }
}

