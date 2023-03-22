local dap = require("dap")

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
	args = { os.getenv("HOME") .. "/.config/nvim/vscode-node-debug2/out/src/nodeDebug.js" },
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
