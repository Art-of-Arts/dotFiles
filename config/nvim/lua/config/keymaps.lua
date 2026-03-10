-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- my own shBangs™
vim.api.nvim_set_keymap("n", "<leader>cb", "", { desc = "shBangs" })
vim.api.nvim_set_keymap("n", "<leader>cbb", "ggI#!/usr/bin/env bash<CR><CR>", { desc = "bash shbang" })
vim.api.nvim_set_keymap("n", "<leader>cbp", "ggI#!.venv/bin/python<CR><CR>", { desc = "python shbang" })
