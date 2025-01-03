-- import modules
require('santu.core.options')
require('santu.core.keymaps')
require('santu.core.autocmds')


-- [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
--
--
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)
--
--
--
--
-- [[ Configure and install plugins ]]
--
--  To check the current status of your plugins, run
--    :Lazy
--
--  You can press `?` in this menu for help. Use `:q` to close the window
--
--  To update plugins you can run
--    :Lazy update
--
--
-- NOTE: Here is where you install your plugins.
require('lazy').setup {
  --
  -- Explicitly add your own plugins, configuration, etc from `lua/santu/plugins/*.lua`
  require "santu.plugins.explorer",
  require "santu.plugins.colorscheme",
  require "santu.plugins.lsp",
  require "santu.plugins.completion",
  require "santu.plugins.treesitter",
  require "santu.plugins.todos",
  --
  --
  -- NOTE: The import below can automatically add your own plugins, configuration, etc from `lua/santu/plugins/*.lua`
  --    This is the easiest way to modularize your config.
  --
  --  Uncomment the following line and add your plugins to `lua/santu/plugins/*.lua` to get going.
  -- { import = 'santu.plugins' },
  --
}
