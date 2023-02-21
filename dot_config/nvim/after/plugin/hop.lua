local hop = require("hop")
hop.setup()

local dirs = require('hop.hint').HintDirection

vim.g.maplocalleader = ','

vim.keymap.set("n", "<localleader>f", function()
    hop.hint_char1({ direction = dirs.AFTER_CURSOR, current_line_only = true })
end, { remap = true })

