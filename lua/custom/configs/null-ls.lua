local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  b.formatting.prettier.with { filetypes = { "html", "markdown", "css" } }, -- so prettier works only on these filetypes
  -- spell
  -- b.diagnostics.cspell,
  -- b.code_actions.cspell,

  -- Lua
  b.formatting.stylua,

  -- cpp
  b.formatting.clang_format,

  -- python
  -- b.formatting.yapf,
  b.formatting.autopep8,

  -- rust
  b.formatting.rustfmt,

  -- markdown
  -- b.diagnostics.markdownlint.with { command = "markdownlint" },
}

null_ls.setup {
  debug = true,
  sources = sources,
}
