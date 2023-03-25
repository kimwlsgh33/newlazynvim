local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "clangd", "pyright", "tailwindcss", "asm_lsp", "dartls", "rust_analyzer" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

--
-- lspconfig.pyright.setup { blabla}
-- lspconfig.tsserver.setup {
--   on_attach = on_attach,
--   capabilities = capabilities,
--   filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
-- }
-- lspconfig.rust_analyzer.setup {
--   mason = false,
--   cmd = { vim.fn.expand "~/.rustup/toolchains/stable-aarch64-apple-darwin/bin/rust-analyzer" },
--   on_attach = on_attach,
--   capabilities = capabilities,
--   settings = {
--     ["rust-analyzer"] = {
--       assist = {
--         importGranularity = "module",
--         importPrefix = "by_self",
--       },
--       cargo = {
--         loadOutDirsFromCheck = true,
--       },
--       procMacro = {
--         enable = true,
--       },
--     },
--   },
-- }
