local M = {}

function M.setup()
    vim.cmd("highlight clear")
    vim.o.background = "dark"
    vim.g.colors_name = "halfdark"
    vim.o.termguicolors = true

    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end

    require("halfdark.terminal").setup()
    require("halfdark.highlight").setup()
end

return M
