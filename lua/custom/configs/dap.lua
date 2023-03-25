local dap, dapui = require "dap", require "dapui"

-- dap.listeners.after.event_initialized["dapui_config"] = function()
--   dapui.open()
-- end
-- dap.listeners.before.event_terminated["dapui_config"] = function()
--   dapui.close()
-- end
-- dap.listeners.before.event_exited["dapui_config"] = function()
--   dapui.close()
-- end

-- python
dap.adapters.python = {
  type = "executable",
  command = "python",
  args = { "-m", "debugpy.adapter" },
}

-- nodejs
dap.adapters.node2 = {
  type = "executable",
  command = "node",
  args = { os.getenv "HOME" .. "/.config/nvim/vscode-node-debug2/out/src/nodeDebug.js" },
}

-- dart
dap.adapters.dart = {
  type = "executable",
  command = "dart",
  args = { "debug_adapter" },
}
dap.configurations.dart = {
  {
    type = "dart",
    request = "launch",
    name = "Launch Dart file",
    program = "${file}",
    args = { "--help" },
  },
}

-- rust
dap.adapters.codelldb = {
  type = "server",
  port = "13000",
  excutable = {
    command = "/usr/bin/codelldb",
    args = { "-p", "${port}" },
  },
}

icons = {
  pause = "",
  play = "",
  step_into = "",
  step_over = "",
  step_out = "",
  step_back = "",
  run_last = "",
  terminate = "",
}

vim.fn.sign_define("DapBreakpoint", { text = "", texthl = "DapBreakpoint", linehl = "", numhl = "" })
vim.fn.sign_define("DapStopped", { text = "", texthl = "DapStopped", linehl = "", numhl = "" })
