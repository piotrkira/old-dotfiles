require('null-ls').setup({
  sources = {
    -- python --
    require('null-ls').builtins.diagnostics.flake8,
    require('null-ls').builtins.diagnostics.mypy,
    require('null-ls').builtins.diagnostics.pylint,
    require('null-ls').builtins.formatting.black,
    require('null-ls').builtins.formatting.isort,
    require('null-ls').builtins.code_actions.gitsigns,
  }
})
