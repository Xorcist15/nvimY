return {
  "mfussenegger/nvim-lint",

  event = {
    "BufReadPre",
    "BufNewFile",
  },

  config = function()
    local lint = require("lint")

    lint.linters_by_ft = {
      javascript = { "eslint_d" },
      python = { "pylint" },
    }

    local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

    vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave", "TextChanged" }, {
      group = lint_augroup,
      callback = function()
        lint.try_lint()
      end
    })

    vim.keymap.set("n", "<leaderl", function()
      lint.try_lint()
    end, { desc = "Trigger linting for current file" })
  end,
}
