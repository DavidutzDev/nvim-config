return {
  "adalessa/laravel.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "tpope/vim-dotenv",
    "MunifTanjim/nui.nvim",
    "nvimtools/none-ls.nvim",
  },
  cmd = { "Sail", "Artisan", "Composer", "Npm", "Yarn", "Pnpm", "Laravel" },
  event = "VeryLazy",
  config = true,
  keys = {
    { "<leader>lla", "<cmd>Laravel artisan<cr>", desc = "Laravel Artisan" },
    { "<leader>llr", "<cmd>Laravel routes<cr>", desc = "Laravel Routes" },
    { "<leader>llm", "<cmd>Laravel related:<cr>", desc = "Laravel Related" },
  }
}
