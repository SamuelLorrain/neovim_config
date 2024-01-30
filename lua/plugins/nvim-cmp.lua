return {
    "hrsh7th/nvim-cmp",
    event = {"InsertEnter", "CmdlineEnter"},
    config = function()
        local cmp = require('cmp')
        local lspkind = require('lspkind')
        cmp.setup({
            completion = {
                autocomplete = false,
                completeopt = "menu,menuone,noinsert"
            },
            snippet = {
                expand = function(args)
                    require('luasnip').lsp_expand(args.body)
                end,
            },
            window = {},
            mapping = {
                ['<Down>'] = {
                    i = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
                },
                ['<Up>'] = {
                    i = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
                },
                ['<C-n>'] = {
                    i = function()
                        if cmp.visible() then
                            cmp.select_next_item({ behavior = cmp.SelectBehavior.Insert })
                        else
                            cmp.complete()
                        end
                    end,
                },
                ['<C-p>'] = {
                    i = function()
                        if cmp.visible() then
                            cmp.select_prev_item({ behavior = cmp.SelectBehavior.Insert })
                        else
                            cmp.complete()
                        end
                    end,
                },
                ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                ["<C-f>"] = cmp.mapping.scroll_docs(4),
                ["<C-Space>"] = cmp.mapping.complete(),
                ["<C-e>"] = cmp.mapping.abort(),
                ["<CR>"] = cmp.mapping.confirm({ select = true }),
                ["<S-CR>"] = cmp.mapping.confirm({
                    behavior = cmp.ConfirmBehavior.Replace,
                    select = true,
                }),
                ["<C-CR>"] = function(fallback)
                    cmp.abort()
                    fallback()
                end,
            },
            sources = {
                { name = "nvim_lsp" },
                { name = "path" },
                { name = "luasnip" },
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
