return {
  {
    "williamboman/mason.nvim",
    opts = {}
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "lua_ls",
        "html-lsp",
        "css-lsp",
        "tsserver",
        "rust_analyzer",
        "svelte-language-server",
        "emmet_ls",
        "intelephense",
        "jsonls",
        "clangd",
      }
    }
  },
  {
    "jay-babu/mason-null-ls.nvim",
    opts = {
      ensure_installed = {
        "stylua"
      }
    }
  }
}
