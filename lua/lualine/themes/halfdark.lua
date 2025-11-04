local palette = require("halfdark.palette")

return {
    normal = {
        a = { fg = palette.bg500, bg = palette.green500, gui = "bold" },
        b = { fg = palette.fg500, bg = palette.bg700 },
        c = { fg = palette.grey700, bg = palette.bg600 },
    },
    inactive = {
        a = { fg = palette.grey500, bg = palette.bg400, gui = "bold" },
        b = { fg = palette.grey500, bg = palette.bg400 },
        c = { fg = palette.grey500, bg = palette.bg400 },
    },
    insert = {
        a = { fg = palette.bg500, bg = palette.bg_blue500, gui = "bold" },
    },
    visual = {
        a = { fg = palette.bg500, bg = palette.purple500, gui = "bold" },
    },
    replace = {
        a = { fg = palette.bg500, bg = palette.red500, gui = "bold" },
    },
    command = {
        a = { fg = palette.bg500, bg = palette.green500, gui = "bold" },
    },
    terminal = {
        a = { fg = palette.bg500, bg = palette.cyan500, gui = "bold" },
    },
}
