-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Function to set tmux status line
local function set_tmux_status()
  os.execute("tmux set -g status off")
end

-- Set tmux status line to 'lazyvim' when Neovim starts
vim.api.nvim_create_autocmd("VimEnter", {
  pattern = "*",
  callback = function()
    set_tmux_status()
  end,
})

-- Reset tmux status line when Neovim exits
vim.api.nvim_create_autocmd("VimLeave", {
  pattern = "*",
  callback = function()
    set_tmux_status()
  end,
})
