return {
    "https://github.com/mfussenegger/nvim-dap-python.git",
    dependencies = {
        "https://github.com/mfussenegger/nvim-dap.git"
    },
    config = function()
        require("dap-python").setup("/Users/samuel/Prog/debugpy_venv/bin/python3")

        vim.keymap.set('n', '<leader>dc', function() require('dap').continue() end)
        vim.keymap.set('n', '<leader>do', function() require('dap').step_over() end)
        vim.keymap.set('n', '<leader>di', function() require('dap').step_into() end)
        vim.keymap.set('n', '<leader>dx', function() require('dap').step_out() end)
        vim.keymap.set('n', '<Leader>db', function() require('dap').toggle_breakpoint() end)
        vim.keymap.set('n', '<Leader>dr', function() require('dap').repl.open() end)
        vim.keymap.set('n', '<Leader>dl', function() require('dap').run_last() end)

        vim.keymap.set('n', '<Leader>dtm', function() require('dap-python').test_method() end)
    end
}
