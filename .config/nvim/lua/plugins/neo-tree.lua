return {
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  opts = function()
    local icons = require("config.icons")
    return {
      close_if_last_window = true,
      filesystem = {
        filtered_items = {
          visible = true,
          show_hidden_count = true,
          hide_dotfiles = false,
          hide_gitignored = true,
          hide_by_name = {},
          never_show = { ".git" },
        },
      },
      default_component_configs = {
        indent = {
          with_markers = false,
          indent_marker = icons.misc.Vbar,
          with_expanders = true,
          expander_collapsed = icons.ui.ArrowClosed,
          expander_expanded = icons.ui.ArrowOpen,
        },
        icon = {
          folder_closed = icons.ui.Folder,
          folder_open = icons.ui.FolderOpen,
          folder_empty = icons.ui.EmptyFolder,
        },
        modified = { symbol = icons.git.Mod },
        git_status = {
          symbols = {
            added = icons.git.Add,
            modified = icons.git.Mod,
            deleted = icons.git.Remove,
            renamed = icons.git.Rename,
            untracked = icons.git.Untracked,
            ignored = icons.git.Ignore,
            unstaged = icons.git.Unstaged,
            staged = icons.git.Staged,
            conflict = icons.git.Conflict,
          },
        },
      },
      window = { width = 40 },
    }
  end,
}
