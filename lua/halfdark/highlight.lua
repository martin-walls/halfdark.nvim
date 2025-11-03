local M = {}
local palette = require("halfdark.palette")

local theme = {
    Comment = { fg = palette.grey, bg = palette.black },
    Normal = { bg = palette.bg0 },
}

function M.setup()
    for group, hl in pairs(theme) do
        vim.api.nvim_set_hl(0, group, hl)
    end
end

-- NOTE: just for local dev fast feedback loop
M.setup();

return M
