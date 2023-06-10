local M = {
  "Mofiqul/vscode.nvim",
  commit = "3ae7e188f0b58b29bc1b5d3698e47ce54f51caf9",
  lazy = false,    -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
}

M.name = "vscode"
function M.config()
    require('vscode').setup({
        style = 'light',
        italic_comments = true,
    })
    local status_ok, _ = pcall(vim.cmd.colorscheme, M.name)
    if not status_ok then
        return
    end
end

return M
