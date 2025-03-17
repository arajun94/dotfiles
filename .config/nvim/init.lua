--設定
vim.o.number = true        -- 行番号を表示
vim.o.relativenumber = true -- 相対行番号を表示
vim.o.tabstop = 4          -- タブ幅を4に設定
vim.o.shiftwidth = 4       -- 自動インデントの幅を4に設定
vim.o.expandtab = true     -- タブをスペースに変換
vim.o.smartindent = true   -- スマートインデントを有効化
--カーソル目立たせ
vim.o.cursorline = true
vim.o.cursorcolumn = true

vim.opt.completeopt = { "menuone" , "noselect" }
vim.opt.virtualedit = "onemore"

vim.g.netrw_banner = 0
vim.g.netrw_winsize = 80
vim.g.netrw_preview = 1
vim.g.netrw_alto = 1
vim.g.netrw_liststyle = 3
vim.g.netrw_browse_split = 4
vim.g.netrw_keepdir = 0

-- キーマップ
vim.keymap.set('i', '<Tab>', '<C-n>')
vim.keymap.set('i', '<S-Tab>', '<C-p>')

vim.api.nvim_create_autocmd( 'InsertCharPre', {
    callback = function()
        if vim.fn.pumvisible() ==1 then
            return
        end
        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-n>", true, true, true), "i", true)
    end
})

vim.api.nvim_create_autocmd( 'FileType', {
    pattern = "html",
    callback = function() vim.keymap.set('i', '</', '</<C-x><C-o><C-n><ESC>F>a') end,
})
