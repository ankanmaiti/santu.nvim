return {
  {
    "ibhagwan/fzf-lua",
    -- optional for icon support
    dependencies = {
      "echasnovski/mini.icons",
    },
    keys = {
      { '<c-p>', ':FzfLua files<cr>', desc='files' },
      { '<leader>ff', ':FzfLua files<cr>', desc='[F]ind [F]iles' },
      { '<leader>fb', ':FzfLua buffers<cr>', desc='[F]ind [B]uffers' },
      { '<leader>fg', ':FzfLua live_grep_native<cr>', desc='[F]ind [G]rep', mode='n' },
      { '<leader>fg', ':FzfLua grep_visual<cr>', desc='grep', mode='v' },
      { '<leader>fr', ':FzfLua oldfiles<cr>', desc='[F]ind [R]ecent files' },
      { '<leader>fk', ':FzfLua keymaps<cr>', desc='[F]ind [K]eymaps' },
    },
    opts = {
      keymap = {
        builtin = {
          ["<c-f>"]      = "preview-page-down",
          ["<c-b>"]      = "preview-page-up",
        },
        fzf = {
          ["ctrl-q"]      = "select-all+accept",
          ["ctrl-u"]      = "half-page-up",
          ["ctrl-d"]      = "half-page-down",
          ["ctrl-x"]      = "jump",
          ["ctrl-f"]      = "preview-page-down",
          ["ctrl-b"]      = "preview-page-up",
        },
      },
    },
  }
}
