-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-j>", "copilot#Accept()", { silent = true, expr = true })

if vim.g.neovide then
  -- Helper function for transparency formatting
  local alpha = function()
    return string.format("%x", math.floor(255 * vim.g.transparency or 0.8))
  end
  vim.opt.guifont = "JetBrainsMono Nerd Font:h14"
  -- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
  vim.g.neovide_transparency = 0.0
  vim.g.transparency = 1
  vim.g.neovide_background_color = "#0f1117" .. alpha()
end
