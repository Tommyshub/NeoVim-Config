return {
  {
    "nvim-telescope/telescope.nvim", tag = "0.1.5",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        require("telescope.builtin")

        vim.keymap.set('n', '<C-p>', function()
            require('telescope.builtin').find_files({
                search_dirs = { '/home/tommy/Code', '/home/tommy/.config/nvim' },
                hidden = true
            })
        end, {})

        vim.keymap.set('n', '<leader>fg', function()
            require('telescope.builtin').live_grep({
                search_dirs = { "/home/tommy/Code", "/home/tommy/.config/nvim" }
            })
        end, {})
    end
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup {
  extensions = {
    ["ui-select"] = {
        require("telescope.themes").get_dropdown {
            }
          }
        }
      }
      require("telescope").load_extension("ui-select")
    end
  }
}

