local M = {}
local palette = require("halfdark.palette")

local theme = {
    -- BASELINE --
    Normal = { bg = palette.bg0, fg = palette.fg0 },
    Comment = { fg = palette.grey, bg = palette.black },

    Conceal = { fg = palette.bg2 },

    -- SEARCH --
    Search = { bg = palette.bg.yellow100, fg = palette.black },
    CurSearch = { bg = palette.bg.yellow75, fg = palette.black },
    IncSearch = { link = "CurSearch" },
    Substitute = { link = "CurSearch" },

    MatchParen = { bg = palette.light_grey, fg = palette.fg1 },

    DiffAdd = { bg = palette.green, fg = palette.black },
    DiffChange = { bg = palette.bg_blue, fg = palette.black },
    DiffDelete = { bg = palette.red, fg = palette.black },
    DiffText = { bg = palette.bg2, fg = palette.fg1 },

    ColorColumn = { bg = palette.bg1 },
    CursorColumn = { bg = palette.bg1 },
    CursorLine = { bg = palette.bg1 },
    EndOfBuffer = { fg = palette.bg2 },
    NonText = { fg = palette.grey },

    -- THEME VARIABLES                                    --
    -- Single points of truth for other groups to link to --
    HalfdarkPunctuation = { fg = palette.grey },

    -- BASELINE SYNTAX                 --
    -- Treesitter groups link to these --
    Constant = { fg = palette.yellow },
    Boolean = { link = "Constant" },
    Character = { link = "Constant" },
    Float = { link = "Constant" },
    Number = { link = "Constant" },
    String = { fg = palette.green },
    Operator = { link = "HalfdarkPunctuation" },

    -- Built-in Diagnostics --
    ErrorMsg = { fg = palette.red },

    -- UI Layout --
    WinSeparator = { fg = palette.grey },
    Folded = { bg = palette.black, fg = palette.fg0 },
    SignColumn = { fg = palette.grey },
    FoldColumn = { link = "SignColumn" },

    -- LSP --
}

function M.setup()
    for group, hl in pairs(theme) do
        vim.api.nvim_set_hl(0, group, hl)
    end
end

-- NOTE: just for local dev fast feedback loop
M.setup()

return M
