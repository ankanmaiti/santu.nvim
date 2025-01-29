return {
  "folke/flash.nvim",
  event = "VeryLazy",
  opts = {},
  config = function ()
    local flash = require"flash"

    -- Setup Keymaps
    local keyopts = { noremap = true, silent = true }

    keyopts.desc = "Flash"
    vim.keymap.set({'n', 'x', 'o'}, 's', flash.jump, keyopts)

    keyopts.desc = "Remote Flash"
    vim.keymap.set('o', 'r', flash.remote, keyopts)

    keyopts.desc = "Toggle Flash On Search"
    vim.keymap.set('c', '<c-s>', flash.toggle, keyopts)
  end
}
