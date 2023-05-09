-- packer & plugin installation
require'config.plugins'

-- config of general vim
-- settings
require'config.general'
require'config.general.styling'
require'config.general.mapping'
require'config.general.lsp'

require'config.plugins.telescope'
require'config.plugins.treesitter'
-- others plugins without
-- complex setup
require'config.plugins.smalls'

