local auBufcheck = vim.api.nvim_create_augroup('bufcheck', {clear = true})

-- reload config file on change
vim.api.nvim_create_autocmd('BufWritePost', {
    group    = auBufcheck,
    pattern  = vim.env.MYVIMRC,
    command  = 'silent source %'
})

-- highlight yanks
vim.api.nvim_create_autocmd('TextYankPost', {
    group    = auBufcheck,
    pattern  = '*',
    callback = function() vim.highlight.on_yank{timeout=250} end 
})

-- sync clipboards because I'm easily confused
vim.api.nvim_create_autocmd('TextYankPost', {
    group    = auBufcheck,
    pattern  = '*',
    callback = function() 
        -- Replace 'fn' with 'vim.fn'
        vim.fn.setreg('+', vim.fn.getreg('*'))
    end 
})

