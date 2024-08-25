return {
  {
    "nanotee/zoxide.vim",
    event = "BufRead"
  },
  {
    "jvgrootveld/telescope-zoxide",
    dependencies = { "nvim-telescope/telescope.nvim" },
    event = "BufRead",
    config = function()
      -- Useful for easily creating commands
      local z_utils = require("telescope._extensions.zoxide.utils")

      require('telescope').setup {
        -- (other Telescope configuration...)
        extensions = {
          zoxide = {
            prompt_title = "[ Navigating arround files ]",
            mappings = {
              default = {
                after_action = function(selection)
                  print("Update to (" .. selection.z_score .. ") " .. selection.path)
                end
              },
              ["<C-s>"] = {
                before_action = function() print("before C-s") end,
                action = function(selection)
                  vim.cmd.edit(selection.path)
                end
              },
              -- Opens the selected entry in a new split
              ["<C-q>"] = { action = z_utils.create_basic_command("split") },
            },
          }
        }
      }
    end,
    keys = {
      {
        "<leader>z",
        function()
          require("telescope").extensions.zoxide.list()
        end,
        desc = "Fuzzy find arround Zeoxide files"
      }
    }
  }
}
