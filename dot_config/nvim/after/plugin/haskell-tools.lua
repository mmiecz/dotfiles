local ht = require('haskell-tools')

local def_opts = { noremap = true, silent = true, }
ht.setup {
    hls = {
        -- See nvim-lspconfig's  suggested configuration for keymaps, etc.
        on_attach = function(client, bufnr)
            local opts = vim.tbl_extend('keep', def_opts, { buffer = bufnr, })
            -- hasell-language-server relies heavily on codeLenses,
            -- so auto-refresh (see advanced configuration) is enabled by default
            vim.keymap.set('n', '<leader>ca', vim.lsp.codelens.run, opts)
            vim.keymap.set('n', '<leader>hs', ht.hoogle.hoogle_signature, opts)
            -- default_on_attach(client, bufnr)  -- if defined, see nvim-lspconfig
        end,
    },
}

vim.keymap.set('n', '<leader>rr', ht.repl.toggle, def_opts)
-- Toggle a GHCi repl for the current buffer
vim.keymap.set('n', '<leader>rf', function()
    ht.repl.toggle(vim.api.nvim_buf_get_name(0))
end, def_opts)
vim.keymap.set('n', '<leader>rq', ht.repl.quit, def_opts)
