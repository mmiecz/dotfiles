local wk = require("which-key")
local telescope = require('telescope.builtin')

--Setup local leader
vim.g.maplocalleader=","

vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "[U]ndoTree toggle" })
vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, {})
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "LSP [F]ormat" })
-- search and replace currently highlighted word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
    { desc = "[S]ubstitute point in file" })

wk.register({
    p = {
        name = "[P]roject (respects .gitgnore)",
        f = { function() telescope.find_files() end, "[F]ind file" },
        g = { function()
            telescope.live_grep()
        end, "Live[G]rep in project"
        }
    },
    l = {
        name = "[L]SP commands",
        d = { function() vim.lsp.buf.definition() end, "[G]o to definition" },
        s = {
            function() telescope.lsp_document_symbols() end, "list [S]ymbols"
        },
        f = {
            function() vim.lsp.buf.format() end, "[F]ormat code"
        }
    },
    b = {
        name = "[B]uffers",
        b = { function() telescope.buffers() end, "List [B]uffers" },
        p = { "<cmd>bprevious<cr>", "[P]revious Buffer" },
        n = { "<cmd>bnext<cr>", "[N]ext Buffer" },
        d = { "<cmd>bdelete<cr>", "[D]elete Current Buffer" }
    }
}, { prefix = "<leader>" })


