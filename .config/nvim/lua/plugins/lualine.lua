return {
  "nvim-lualine/lualine.nvim",
  opts = function()
    local icons = require("config.icons")

    local diagnostics = {
      "diagnostics",
      sources = { "nvim_diagnostic" },
      sections = { "error", "warn", "info", "hint" },
      symbols = {
        error = icons.diagnostics.Error,
        hint = icons.diagnostics.Hint,
        info = icons.diagnostics.Information,
        warn = icons.diagnostics.Warning,
      },
      colored = true,
      update_in_insert = false,
      always_visible = false,
    }

    local diff = {
      "diff",
      symbols = {
        added = icons.git.Add .. " ",
        untracked = icons.git.Untracked .. " ",
        modified = icons.git.Mod .. " ",
        removed = icons.git.Remove .. " ",
      },
      colored = true,
      always_visible = false,
      source = function()
        local gitsigns = vim.b.gitsigns_status_dict
        if gitsigns then
          return {
            added = gitsigns.added,
            modified = gitsigns.changed,
            removed = gitsigns.removed,
          }
        end
      end,
    }

    local lsp_status = {
      function()
        local buf_clients = vim.lsp.get_clients({ bufnr = vim.api.nvim_get_current_buf() })
        if next(buf_clients) == nil then
          return icons.misc.NoActiveLsp
        end
        local client_names = {}
        for _, client in pairs(buf_clients) do
          table.insert(client_names, client.name)
        end
        return table.concat(client_names, ", ")
      end,
      icon = icons.misc.Lsp,
      color = { fg = "#ffffff", gui = "bold" },
      cond = function()
        return next(vim.lsp.get_clients({ bufnr = vim.api.nvim_get_current_buf() })) ~= nil
      end,
    }
    return {
      options = {
        theme = "auto",
        globalstatus = true,
        component_separators = { left = "", right = "" },
        disabled_filetypes = { statusline = { "dashboard", "lazy", "alpha" } },
      },
      sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { diff, diagnostics },
        lualine_x = { lsp_status },
        lualine_y = {},
        lualine_z = {},
      },
    }
  end,
}
