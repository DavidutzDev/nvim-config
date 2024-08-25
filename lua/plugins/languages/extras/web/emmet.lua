return {
  "mattn/emmet-vim",
  ft = {
    "html",
    "css",
    "scss",
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
    "svelte",
    "vue",
    "php",
  },
  init = function()
    vim.g.user_emmet_leader_key = "<C-,>"
  end,
}
