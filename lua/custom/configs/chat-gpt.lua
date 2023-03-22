local env = vim.fn.expand "$HOME" .. "/.config/nvim/env.lua"
dofile(env)

if vim.env.OPENAI_API_KEY == nil then
  print "OPENAI_API_KEY not set"
  return
end

require("chatgpt").setup {
  keymaps = {
    close = { "<C-c>" },
    close_normal = "<ESC>",
    submit = "<C-Enter>",
    yank_last = "<C-y>",
    yank_last_code = "<C-k>",
    scroll_up = "<C-u>",
    scroll_down = "<C-d>",
    toggle_settings = "<C-o>",
    -- new_session = "<C-n>",
    cycle_windows = "<Tab>",
    -- in the Sessions pane
    select_session = "<Space>",
    rename_session = "r",
    delete_session = "d",
  },
}
