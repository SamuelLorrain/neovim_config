return {
    "hrsh7th/nvim-cmp",
    event = {"InsertEnter", "CmdlineEnter"},
    config = function()
        local cmp = require('cmp')
        local lspkind = require('lspkind')
        cmp.setup({
            snippet = {
                expand = function(args)
                    require('luasnip').lsp_expand(args.body)
                end,
            },
            mappings = {
                ["<C-d"] = cmp.mapping.scroll_docs(-4),
                ["<C-f"] = cmp.mapping.scroll_docs(4),
                ["<C-e"] = cmp.mapping.close(),
                ["<CR"] = cmp.mapping.confirm({
                    behavior = cmp.ConfirmBehavior.Insert,
                    select = true
                }),
                ["<C-space>"] = cmp.mapping.complete()
            },
            sources = {
                { name = "nvim_lsp" },
                { name = "path" },
                { name = "luasnip" }, -- pas sur que j'ai envie d'avoir ça
                { name = "buffer", keyword_length = 5 },
            },
            formatting = {
                format = lspkind.cmp_format({
                    with_text = true,
                    menu = {
                        buffer = "[buf]",
                        nvim_lsp = "[LSP]",
                        nvim_lua = "[API]",
                        path = "[path]",
                        luasnip = "[snip]"
                    }
                })
            }
        })
    end,
    dependencies = {
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-nvim-lua",
        "L3MON4D3/LuaSnip",
        "saadparwaiz1/cmp_luasnip",
        "onsails/lspkind.nvim",
    }
}
