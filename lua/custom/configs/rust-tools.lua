local extension_path = vim.env.HOME .. "/.vscode/extensions/vadimcn.vscode-lldb-1.9.0"
local codelldb_path = extension_path .. "/adapter/codelldb"
local liblldb_path = extension_path .. "/adapter/libcodelldb.dylib"
-- local liblldb_path = extension_path .. "/adapter/liblldb.dylib"
--
local opts = {
  server = {
    on_attach = function(_, bufnr)
      -- Hover actions
      vim.keymap.set("n", "<C-l>", require("rust-tools").hover_actions.hover_actions, { buffer = bufnr })
      -- Code action groups
      vim.keymap.set("n", "<Leader>a", require("rust-tools").code_action_group.code_action_group, { buffer = bufnr })
    end,
  },
  -- ... other configs
  dap = {
    adapter = require("rust-tools.dap").get_codelldb_adapter(codelldb_path, liblldb_path),
  },
}

-- Normal setup
require("rust-tools").setup(opts)
