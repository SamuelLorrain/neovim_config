return {
    "CRAG666/code_runner.nvim",
    config = function()
        require('code_runner').setup({
            filetype = {
                python = function()
                    return "venv/bin/python"
                end
            }
        })
    end,
};
