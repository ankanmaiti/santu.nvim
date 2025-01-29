return {
  'echasnovski/mini.nvim',
  version = false,

  config = function ()
    -- Extend and create a/i textobjects
    require"mini.ai".setup {}

    -- Autopairs
    require"mini.pairs".setup {}

    -- Split and join arguments
    -- use 'gS' for toggle split/join
    require"mini.splitjoin".setup {}

    -- Surround actions
    require"mini.surround".setup {
      mappings = {
        add = "ys", -- Add surrounding in Normal and Visual modes
        delete = "ds", -- Delete surrounding
        find = "", -- Find surrounding (to the right)
        find_left = "", -- Find surrounding (to the left)
        highlight = "", -- Highlight surrounding
        replace = "cs", -- Replace surrounding
        update_n_lines = "ys", -- Update `n_lines`
      },
    }
  end
}
