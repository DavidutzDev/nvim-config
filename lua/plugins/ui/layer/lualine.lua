return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons", "arkav/lualine-lsp-progress" },
  config = function()
    local arrow_statusline = require("arrow.statusline")

    local function arrow_status()
      local index = arrow_statusline.is_on_arrow_file()

      if index then
        return arrow_statusline.text_for_statusline_with_icons()
      else
        return arrow_statusline.text_for_statusline()
      end
    end

    require("lualine").setup({
      options = {
        icons_enabled = true,
        theme = "material",
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
        disabled_filetypes = {
          statusline = {},
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
          statusline = 1000,
          tabline = 1000,
          winbar = 1000,
        },
      },

      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = { "filename", "lsp_progress" },
        lualine_x = { "encoding", "fileformat", "filetype" },
        lualine_y = { arrow_status, "progress" },
        lualine_z = { "location" },
      },
    })
  end,
}
