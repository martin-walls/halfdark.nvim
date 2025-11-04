local M = {}
local palette = require("halfdark.palette")

local theme = {
    -- BASELINE --
    -- TODO: "none" when transparent option set in config, else bg500
    Normal = { bg = "none", fg = palette.fg500 },
    Special = { fg = palette.fg600 },
    Comment = { fg = palette.grey500, bg = palette.black },

    Conceal = { fg = palette.grey500 },

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
    HalfdarkTopLevelDefn = { fg = palette.blue500 },
    HalfdarkVariable = { fg = palette.fg500 },
    HalfdarkDocComment = { bg = palette.black, fg = palette.yellow500 },

    -- BASELINE SYNTAX                            --
    -- Treesitter groups link to these by default --
    Constant = { fg = palette.yellow500 },
    Boolean = { link = "Constant" },
    Character = { link = "Constant" },
    Float = { link = "Constant" },
    Number = { link = "Constant" },
    String = { fg = palette.green500 },
    Operator = { link = "HalfdarkPunctuation" },

    MatchParen = { bg = palette.grey700, fg = palette.fg600 },

    Identifier = { link = "HalfdarkVariable" },
    Function = { link = "HalfdarkTopLevelDefn" },
    PreProc = { link = "Normal" },
    Statement = { link = "Normal" },
    Type = { link = "Normal" },

    Title = { fg = palette.blue500, bold = 1 },

    -- DIFF --
    Error = { bg = palette.red300 },
    Added = { fg = palette.green500 },
    Changed = { fg = palette.cyan500 },
    Removed = { fg = palette.red500 },

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

    -- Treesitter --
    ["@comment.documentation"] = { link = "HalfdarkDocComment" },
    ["@conceal"] = { link = "Conceal" },
    ["@constant.builtin"] = { link = "Constant" },
    ["@function.method"] = { link = "HalfdarkTopLevelDefn" },
    ["@function.method.call"] = { link = "Normal" },
    ["@keyword"] = { fg = palette.grey700 },
    ["@punctuation"] = { link = "HalfdarkPunctuation" },
    ["@type"] = { link = "Normal" },
    ["@type.builtin"] = { link = "Normal" },
    ["@variable"] = { link = "HalfdarkVariable" },

    -- LSP --
    LspReferenceRead = { underline = 1, sp = palette.grey700 },
    LspReferenceWrite = { link = "LspReferenceRead" },
    LspReferenceText = { link = "LspReferenceRead" },

    -- C# XMLdoc comments --
    ["@lsp.type.xmlDocCommentDelimiter"] = { link = "Comment" },
    ["@lsp.type.xmlDocCommentName"] = { link = "@lsp.type.xmlDocCommentDelimiter" },
    ["@lsp.type.xmlDocCommentAttributeName"] = { link = "@lsp.type.xmlDocCommentDelimiter" },
    ["@lsp.type.xmlDocCommentAttributeQuotes"] = { link = "@lsp.type.xmlDocCommentDelimiter" },

    -- Diagnostics --
    DiagnosticInfo = { fg = palette.cyan500 },
    DiagnosticOk = { fg = palette.green500 },
    DiagnosticHint = { fg = palette.blue500 },
    DiagnosticWarn = { fg = palette.yellow500 },
    DiagnosticError = { fg = palette.red500 },

    DiagnosticVirtualTextInfo =  {bg = palette.black, fg = palette.cyan500 },
    DiagnosticVirtualTextOk =    {bg = palette.black, fg = palette.green500 },
    DiagnosticVirtualTextHint =  {bg = palette.black, fg = palette.blue500 },
    DiagnosticVirtualTextWarn =  {bg = palette.black, fg = palette.yellow500 },
    DiagnosticVirtualTextError = {bg = palette.black, fg = palette.red500 },

    DiagnosticFloatingInfo =  {link = "DiagnosticVirtualTextInfo"},
    DiagnosticFloatingOk =    {link = "DiagnosticVirtualTextOk"},
    DiagnosticFloatingHint =  {link = "DiagnosticVirtualTextHint"},
    DiagnosticFloatingWarn =  {link = "DiagnosticVirtualTextWarn"},
    DiagnosticFloatingError = {link = "DiagnosticVirtualTextError"},

    DiagnosticVirtualLinesInfo =  {link = "DiagnosticVirtualTextInfo"},
    DiagnosticVirtualLinesOk =    {link = "DiagnosticVirtualTextOk"},
    DiagnosticVirtualLinesHint =  {link = "DiagnosticVirtualTextHint"},
    DiagnosticVirtualLinesWarn =  {link = "DiagnosticVirtualTextWarn"},
    DiagnosticVirtualLinesError = {link = "DiagnosticVirtualTextError"},

    DiagnosticUnderlineInfo = { undercurl = 1, sp = palette.cyan500 },
    DiagnosticUnderlineOk = { undercurl = 1, sp = palette.green500 },
    DiagnosticUnderlineHint = { undercurl = 1, sp = palette.blue500 },
    DiagnosticUnderlineWarn = { undercurl = 1, sp = palette.yellow500 },
    DiagnosticUnderlineError = { bg = palette.red300 },

    -- CUSTOM HIGHLIGHT QUERIES --
    ["@halfdark.topLevelDefn"] = { link = "HalfdarkTopLevelDefn" },

    -- LANGUAGE-SPECIFIC OVERRIDES --
    ["@function.method.c_sharp"] = { link = "Normal" },
    ["@lsp.type.method.cs"] = { link = "Normal" },
}

function M.setup()
    for group, hl in pairs(theme) do
        vim.api.nvim_set_hl(0, group, hl)
    end
end

-- NOTE: just for local dev fast feedback loop
-- M.setup()

return M
