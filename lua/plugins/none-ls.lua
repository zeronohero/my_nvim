return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "williamboman/mason.nvim"
  },
  config = function()
  local null_ls = require("null-ls")
  require("mason").setup({
    ensure_installed = {
          -- formater
          "stylua",
          "prettierd",
          "clang-format",
          -- diagnostic
          -- linter 
        }
  })

  null_ls.setup({
      sources = {
          null_ls.builtins.formatting.stylua,
          null_ls.builtins.formatting.prettierd,
          null_ls.builtins.formatting.clang_format,
      },
    })
    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end
}
