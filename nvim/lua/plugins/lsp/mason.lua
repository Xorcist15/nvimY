return {
  "williamboman/mason.nvim",

  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },

  config = function()
    -- import mason
    local mason = require("mason")

    -- import mason-lspconfig
    local mason_lspconfig = require("mason-lspconfig")

    -- import mason-tool-installer
    local mason_tool_installer = require("mason-tool-installer")

    -- enable mason and configure icons
    mason.setup({
      ui = {
        icons = {
          package_installed = "✔",
          package_pending = "➜",
          package_uninstalled = "✘",
        }
      }
    })
    mason_lspconfig.setup({
      -- list of servers for mason to install
      ensure_installed = {
        -- LSP
        "ts_ls",        -- javascript/typescript
        "html",         -- html
        "cssls",        -- css
        "lua_ls",       -- lua
        "pyright",      -- python
        "eslint",       -- idk man
        "clangd",       -- c/c++
        "jdtls",        -- java
        "intelephense", -- php
      },
      -- auto-install configure servers (with lspconfig)
      automatic_installation = true, -- not the same as ensure_installed
    })

    -- mason-tool-installer installs linters/formatters
    mason_tool_installer.setup({
      ensure_installed = {
        "cpplint",    -- c/c++
        "checkstyle", -- java
        "pylint",     -- python
        "eslint",     -- javascript
        "phpmd",      -- php
        "htmlhint",   -- html
        "stylelint",  -- css
      },
    })
  end,
}
