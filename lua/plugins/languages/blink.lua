return {
  {
    "saghen/blink.compat",
    version = "*",
    lazy = true,
    opts = {},
  },
  {
    "saghen/blink.cmp",
    dependencies = { "rafamadriz/friendly-snippets" },
    vesion = "*",
    --@module 'blink.cmp'
    --@type blink.cmp.Config
    opts = {
      keymap = {
        preset = "default",
        ["<Up>"] = { "select_prev", "fallback" },
        ["<Down>"] = { "select_next", "fallback" },
        ["<CR>"] = { "select_and_accept", "fallback" },
      },
      appearance = {
        use_nvim_cmp_as_default = true,
        nerd_font_variant = "mono",
      },
      completion = {
        keyword = { range = "full" },
        accept = { auto_brackets = { enabled = false } },
        list = { selection = { preselect = false, auto_insert = true } },
        menu = {
          auto_show = true,
          draw = {
            columns = {
              { "label",     "label_description", gap = 1 },
              { "kind_icon", "kind" },
            },
          },
        },
        documentation = { auto_show = true, auto_show_delay_ms = 500 },
        ghost_text = { enabled = true },
      },
      sources = {
        default = { "lsp", "path", "snippets", "buffer" },
        providers = {
          htmlcss = {
            name = "html-css",
            module = "blink.compat.source",
            score_offset = -3,
            opts = {
              enable_on = { "html", "css", "scss" },
              notify = false,
              documentation = { auto_show = true },
              -- Add any external ccs like one below
              style_sheets = {
              }
            }
          }
        },
        cmdline = {},
      },
      snippets = { preset = "default" },
      signature = { enabled = false },
    },
    opts_extend = { "sources.default" },
  },
}
