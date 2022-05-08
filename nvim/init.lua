--  __  __       _
-- |  \/  | __ _(_)_ __
-- | |\/| |/ _` | | '_ \
-- | |  | | (_| | | | | |
-- |_|  |_|\__,_|_|_| |_|

require "core.options"
require "core.plugins"
require "core.keybinds"
vim.cmd "colorscheme darkplus"

--  ____  _             _
-- |  _ \| |_   _  __ _(_)_ __  ___
-- | |_) | | | | |/ _` | | '_ \/ __|
-- |  __/| | |_| | (_| | | | | \__ \
-- |_|   |_|\__,_|\__, |_|_| |_|___/
--                |___/


require "user.lualine"
require "user.lsp"
require "user.cmp"
require "user.treesitter"
require "user.autopairs"
require "user.bufferline"
require "user.nvim-tree"
