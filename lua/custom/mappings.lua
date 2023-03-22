---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    -- general
    ["<leader>+"] = { "<C-a>", "plus" },
    ["<leader>-"] = { "<C-x>", "minus" },
    ["<leader>sv"] = { "<C-w>v", "split vertically" },
    ["<leader>sh"] = { "<C-w>s", "split horizontally" },
    ["<leader>se"] = { "<C-w>=", "split equal" },
    ["<leader>sx"] = { "<cmd> close <CR>", "split close" },
    ["<leader>sm"] = { "<cmd> MaximizerToggle <CR>", "split Max" },

    -- flutter
    ["<leader>fr"] = { "<cmd> FlutterRun <CR>", "FlutterRun" },
    ["<leader>fe"] = { "<cmd> FlutterEmulators <CR>", "FlutterEmulators" },
    ["<leader>fd"] = { "<cmd> FlutterDevices <CR>", "FlutterDevices" },
    ["<leader>ft"] = { "<cmd> FlutterOutlineToggle <CR>", "FlutterOutlineToggle" },
    ["<leader>dv"] = { "<cmd> FlutterVisualDebug <CR>", "FlutterVisualDebug" },
    ["<leader>rr"] = { "<cmd> FlutterRestart <CR>", "FlutterRestart" },
    ["<leader>lc"] = { "<cmd> FlutterLogClear <CR>", "FlutterLogClear" },
    ["<leader>fc"] = { "<cmd> FlutterQuit <CR>", "FlutterQuit" },
    -- nvim-dap
    ["<leader>dh"] = { "<cmd>lua require'dap'.toggle_breakpoint()<cr>" },
    ["<leader>dn"] = { "<cmd>lua require'dap'.continue()<cr>" },
    ["<leader>di"] = { "<cmd>lua require'dap'.step_into()<cr>" },
    ["<leader>do"] = { "<cmd>lua require'dap'.step_over()<cr>" },
    ["<leader>dr"] = { "<cmd>lua require'dap'.repl.open({},'vsplit')<cr><C-w>l" },
    ["<leader>dl"] = { "<cmd>lua require'dap'.run_last()<cr>" },
    -- ["<leader>dv"] = { "<cmd>lua require'dap.ui.variables'.hover()<cr>" },
    -- ["<leader>d?"] = { "<cmd>lua require'dap.ui.variables'.scopes()<cr>" },
    ["<leader>de"] = { "<cmd>lua require'dap'.set_exception_breakpoints({'all'})<cr>" },
    ["<leader>df"] = { "<cmd>Telescope dap frames<cr>" },
    ["<leader>db"] = { "<cmd>Telescope dap list_breakpoints<cr>" },
    ["<leader>go"] = { "<cmd>ChatGPT<CR>", "open gpt" },
    ["<leader>ga"] = { "<cmd>ChatGPTActAs<CR>", "gpt act as.." },
    ["<leader>ge"] = { "<cmd>ChatGPTEditWithInstructions<CR>", "gpt edit with instructions.." },
  },
  i = {
    ["jk"] = { "<ESC>", "escape" },
  },
}

-- more keybinds!

return M
