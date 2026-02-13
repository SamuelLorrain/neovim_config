return {
    "mfussenegger/nvim-dap-python",
    lazy = true,
    config = function()
        local python = vim.fn.expand("~/.local/share/nvim/mason/packages/debugpy/venv/bin/python")
        require("dap-python").setup("uv")
        -- See https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings
        table.insert(require('dap').configurations.python, {
            type = 'python',
            request = 'launch',
            name = 'Debug JOB',
            module =  "projects.jobs.cmaps.jobs.pipeline",
            console = "integratedTerminal",
            justMyCode = false,
            env = {
                VERSION = "2.4.2",
                API = "true"
            }
        })
    end,
    -- Consider the mappings at
    -- https://github.com/mfussenegger/nvim-dap-python?tab=readme-ov-file#mappings
    dependencies = {
        "mfussenegger/nvim-dap",
    },
}
