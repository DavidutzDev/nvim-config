return {
  "marko-cerovac/material.nvim",
  enabled = true,
  lazy = false,
  priority = 1000,
  opts = {
    contrast = {
      sidebars = true,
      floating_windows = true,
      cursor_line = true,
      non_current_windows = true,
      filetypes = {},
    },
    lualine_style = "default",

    plugins = { -- Uncomment the plugins that you use to highlight them
      -- Available plugins:
      -- "coc",
      -- "colorful-winsep",
      -- "dap",
      -- "dashboard",
      -- "eyeliner",
      -- "fidget",
      -- "flash",
      -- "gitsigns",
      -- "harpoon",
      -- "hop",
      -- "illuminate",
      -- "indent-blankline",
      -- "lspsaga",
      -- "mini",
      -- "neogit",
      -- "neotest",
      -- "neo-tree",
      -- "neorg",
      -- "noice",
      "nvim-cmp",
      -- "nvim-navic",
      -- "nvim-tree",
      "nvim-web-devicons",
      -- "rainbow-delimiters",
      -- "sneak",
      "telescope",
      -- "trouble",
      -- "which-key",
      -- "nvim-notify",
    },
  },
  init = function()
    vim.g.material_style = "deep ocean"
    vim.cmd.colorscheme("material")
  end,
}
