return {
  "williamboman/mason.nvim",
  cmd = "Mason",
  keys = { { "<leader>cm", "<cmd>Mason<cr>", desc = "Mason" } },
  opts = {
    ensure_installed = {
      "ansible-language-server",
      "beautysh",
      "black",
      "helm-ls",
      "json-lsp",
      "lua-language-server",
      "markdownlint",
      "shfmt",
      "stylua",
      "terraform-ls",
      "yamllint",
      "ansible-lint",
      "yamlfmt",
    },
  },
}
