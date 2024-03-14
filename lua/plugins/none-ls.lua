return {
  "nvimtools/none-ls.nvim",
  "nvimtools/none-ls-extras.nvim",
  config = function()
    local null_ls = require("null-ls")
    local null_ls_extras = require("none-ls-extras")
    null_ls.setup({
      sources = {
        -- Spell
        null_ls.builtins.completion.spell,
        -- Lua
        null_ls.builtins.formatting.stylua,
        -- TypeScript and JavaScript
        null_ls.builtins.formatting.prettier,
        null_ls_extras.builtins.diagnostics.eslint_d,
        -- PHP
        null_ls.builtins.formatting.php_cs_fixer,
        null_ls.builtins.diagnostics.psalm,
        -- Python
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.isort,
        -- Rust
        null_ls.builtins.diagnostics.ltrs,
        -- Markdown
        null_ls.builtins.diagnostics.markdownlint,
      },
    })
    vim.keymap.set("n", "<Leader>gf", vim.lsp.buf.format({ timeout_ms = 2000 }))
  end
}
