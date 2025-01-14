return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
  },
  event = "VeryLazy",
  config = function()
    local lspconfig = require("lspconfig")
    local capabilities = require("blink.cmp").get_lsp_capabilities()

    lspconfig.lua_ls.setup({
      capabilities = capabilities,

      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
          workspace = {
            library = {
              [vim.fn.expand("$VIMRUNTIME/lua")] = true,
              [vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true,
            },
            maxPreload = 10000,
            preloadFileSize = 10000,
          },
        },
      },
    })
    lspconfig.emmet_ls.setup({
      capabilities = capabilities,
      filetypes = {
        "html",
        "css",
        "scss",
        "javascript",
        "javascriptreact",
        "javascript.jsx",
        "typescript",
        "typescriptreact",
        "typescript.tsx",
        "svelte",
      },
    })
    lspconfig.tsserver.setup({
      capabilities = capabilities,
      filetypes = {
        "javascript",
        "javascriptreact",
        "javascript.jsx",
        "typescript",
        "typescriptreact",
        "typescript.tsx",
        "vue",
        "svelte",
      },
    })
    lspconfig.svelte.setup({ capabilities = capabilities })
    lspconfig.intelephense.setup({ capabilities = capabilities })
    lspconfig.jsonls.setup({ capabilities = capabilities })
    lspconfig.clangd.setup({ capabilities = capabilities })
  end,
  keys = {
    { "[d", vim.diagnostic.goto_prev, desc = "Go to previous diagnostic" },
    { "]d", vim.diagnostic.goto_next, desc = "Go to next diagnostic" },
    {
      "gd",
      function()
        require("telescope.builtin").lsp_definitions()
      end,
    },
    {
      "gi",
      function()
        require("telescope.builtin").lsp_implementations()
      end,
    },
    {
      "gt",
      function()
        require("telescope.builtin").lsp_type_definitions()
      end,
    },
    {
      "gr",
      function()
        require("telescope.builtin").lsp_references()
      end,
    },
    { "K",          vim.lsp.buf.hover,         desc = "Hover" },
    { "<leader>ld", vim.diagnostic.open_float, desc = "Show diagnostic" },
    {
      "<leader>lD",
      function()
        require("telescope.builtin").diagnostics()
      end,
      desc = "Open diagnostics list",
    },
    { "<leader>lc", vim.lsp.buf.code_action, mode = { "n", "v" },   desc = "Code Actions" },
    { "<leader>lr", vim.lsp.buf.rename,      desc = "Rename Symbol" },
  },
}
