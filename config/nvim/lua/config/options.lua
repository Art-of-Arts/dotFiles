-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- LSPs and stuff
vim.lsp.enable("bashls")

-- general options
vim.opt.wrap = true
vim.opt.fillchars = { foldopen = "", foldclose = "", fold = " ", foldsep = " ", diff = "╱", eob = " " }
vim.g.snacks_animate = false

--[[
Vim Macros & escape characters
--]]

local esc = vim.api.nvim_replace_termcodes("<Esc>", true, true, true)

vim.fn.setreg("i", 'c"' .. esc .. "pl")
