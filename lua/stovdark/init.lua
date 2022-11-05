vim.api.nvim_command("hi clear")
if vim.fn.exists("syntax_on") then
    vim.api.nvim_command("syntax reset")
end
vim.o.background = "dark"
vim.o.termguicolors = true
vim.g.colors_name = "stovdark"

local util = require("stovdark.util")
Config = require("stovdark.config")
C = require("stovdark.palette")
local highlights = require("stovdark.highlights")
local Treesitter = require("stovdark.Treesitter")
local markdown = require("stovdark.markdown")
local Whichkey = require("stovdark.Whichkey")
local Git = require("stovdark.Git")
local LSP = require("stovdark.LSP")


local skeletons = {
    highlights, Treesitter, markdown, Whichkey, Git, LSP
}

for _, skeleton in ipairs(skeletons) do
    util.initialise(skeleton)
end