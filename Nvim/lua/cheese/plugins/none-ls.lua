return {
    "nvimtools/none-ls.nvim",
        dependencies = "nvim-lua/plenary.nvim",
    config = function()
        local null_ls = require("null-ls")
        local code_actions = null_ls.builtins.code_actions
        local diagnostics = null_ls.builtins.diagnostics
        local formatting = null_ls.builtins.formatting
        local hover = null_ls.builtins.hover
        local completion = null_ls.builtins.completion
        local sources = {
            null_ls.builtins.formatting.stylua,
            null_ls.builtins.code_actions.proselint,
            null_ls.builtins.code_actions.refactoring,
            null_ls.builtins.completion.luasnip,
            null_ls.builtins.completion.spell,
            null_ls.builtins.diagnostics.checkmake,
            null_ls.builtins.diagnostics.clazy,
            null_ls.builtins.diagnostics.cmake_lint,
            null_ls.builtins.diagnostics.cppcheck,
            null_ls.builtins.diagnostics.gccdiag,
            null_ls.builtins.diagnostics.mypy,
            null_ls.builtins.diagnostics.pylint,
            null_ls.builtins.diagnostics.proselint,
            null_ls.builtins.diagnostics.write_good,
            null_ls.builtins.formatting.clang_format,
            null_ls.builtins.formatting.cmake_format,
            null_ls.builtins.formatting.codespell,
            null_ls.builtins.formatting.isort,
            null_ls.builtins.formatting.pyink,
            null_ls.builtins.formatting.stylelint,
            null_ls.builtins.formatting.uncrustify,
            null_ls.builtins.formatting.uncrustify,
            null_ls.builtins.formatting.yapf,
            null_ls.builtins.hover.dictionary,
            null_ls.builtins.hover.printenv,
        }
        null_ls.setup({ sources = sources })
    end
}
