local M = {}
local palette = require("halfdark.palette")

local theme = {
    -- BASELINE --
    Normal = { bg = palette.bg500, fg = palette.fg500 },
    Comment = { fg = palette.grey500, bg = palette.black },

    Conceal = { fg = palette.bg700 },

    -- SEARCH --
    Search = { bg = palette.bg_yellow500, fg = palette.black },
    CurSearch = { bg = palette.bg_yellow400, fg = palette.black },
    IncSearch = { link = "CurSearch" },
    Substitute = { link = "CurSearch" },

    -- SELECTION --
    Visual = { bg = palette.bg_yellow500, fg = palette.black },

    -- TODO: better colours here -- and link TS diff groups
    DiffAdd = { bg = palette.green500, fg = palette.diff_add },
    DiffChange = { bg = palette.bg_blue500, fg = palette.diff_change },
    DiffDelete = { bg = palette.red500, fg = palette.diff_delete },
    DiffText = { bg = palette.fg500, fg = palette.diff_text },

    ColorColumn = { bg = palette.bg600 },
    CursorColumn = { bg = palette.bg600 },
    CursorLine = { bg = palette.bg600 },
    EndOfBuffer = { fg = palette.bg700 },
    NonText = { fg = palette.grey500 },

    -- THEME VARIABLES                                    --
    -- Single points of truth for other groups to link to --
    HalfdarkPunctuation = { fg = palette.grey500 },

    -- BASELINE SYNTAX                 --
    -- Treesitter groups link to these --
    Constant = { fg = palette.yellow500 },
    Boolean = { link = "Constant" },
    Character = { link = "Constant" },
    Float = { link = "Constant" },
    Number = { link = "Constant" },
    String = { fg = palette.green500 },
    Operator = { link = "HalfdarkPunctuation" },

    MatchParen = { bg = palette.grey700, fg = palette.fg600 },

    -- Built-in Diagnostics --
    ErrorMsg = { fg = palette.red500 },
    SpellBad = { undercurl = 1, sp = palette.red500 },
    SpellCap = { undercurl = 1, sp = palette.yellow500 },
    SpellLocal = { link = "SpellCap" },
    SpellRare = { link = "SpellCap" },

    -- UI Layout --
    WinSeparator = { fg = palette.grey500 },
    Folded = { bg = palette.black, fg = palette.fg500 },
    SignColumn = { fg = palette.grey500 },
    FoldColumn = { link = "SignColumn" },

    -- LSP --
    LspReferenceRead = { underline = 1, sp = palette.grey700 },
    LspReferenceWrite = { link = "LspReferenceRead" },
    LspReferenceText = { link = "LspReferenceRead" },
}

function M.setup()
    for group, hl in pairs(theme) do
        vim.api.nvim_set_hl(0, group, hl)
    end
end

-- NOTE: just for local dev fast feedback loop
M.setup()

return M
