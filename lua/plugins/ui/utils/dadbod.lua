return {
  "kristijanhusak/vim-dadbod-ui",
  dependencies = {
    { "tpope/vim-dadbod",                     lazy = true },
    { "kristijanhusak/vim-dadbod-completion", ft = { "sql", "mysql", "plsql" }, lazy = true },
  },
  event = "VeryLazy",
  init = function()
    vim.g.dadbod_ui_use_nerd_fonts = 1

    vim.api.nvim_create_autocmd("FileType", {
      pattern = "dbout",
      callback = function()
        vim.wo.foldenable = false
      end,
    })
  end,
  keys = {
    {
      "<leader>db",
      function()
        vim.cmd("tabnew")

        vim.cmd("DBUI")
      end,
      desc = "Toggle dadbod",
    },
  },
}
