-- disable netwr because nvim-tree is dumb
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("options")
require("lazy_plugin_loader")
require("keymaps")

