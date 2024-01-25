return {
    "mfussenegger/nvim-dap",
    dependencies = {
        "rcarriga/nvim-dap-ui",
        "mfussenegger/nvim-dap-python"
    },
    config = function()
        local dap = require('dap')
        local dapui = require("dapui")
        dapui.setup()

        dap.listeners.before.attach.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.launch.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.event_terminated.dapui_config = function()
            dapui.close()
        end
        dap.listeners.before.event_exited.dapui_config = function()
            dapui.close()
        end
        vim.keymap.set('n', '<Leader>db', function() dap.toggle_breakpoint() end)
        vim.keymap.set('n', '<Leader>dc', function() dap.continue() end)

        -- TODO on doit pouvoir choper celle de Mason ?
        local debugpy_path = require('mason-registry').get_package('debugpy'):get_install_path()
        require('dap-python').setup(debugpy_path .. '/venv/bin/python') -- link a to venv containing debugpy
    end,
}
