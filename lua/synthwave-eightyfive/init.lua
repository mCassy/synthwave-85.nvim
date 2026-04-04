-- Synthwave '84 colorscheme for Neovim
-- Ported from https://github.com/robb0wen/synthwave-vscode

local M = {}

M.config = require("synthwave-eightyfive.config")

---@param opts? SynthwaveConfig
function M.setup(opts)
  M.config.setup(opts)
end

function M.load()
  -- Reset highlights
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  vim.o.termguicolors = true
  vim.o.background = "dark"
  vim.g.colors_name = "synthwave-eightyfive"

  local config = require("synthwave-eightyfive.config")
  local palette = require("synthwave-eightyfive.palette")

  -- Set terminal colors
  if config.terminal_colors then
    M.set_terminal_colors(palette)
  end

  -- Collect all highlight groups
  local groups = {}
  local sources = {
    "synthwave-eightyfive.groups.editor",
    "synthwave-eightyfive.groups.syntax",
    "synthwave-eightyfive.groups.treesitter",
    "synthwave-eightyfive.groups.lsp",
    "synthwave-eightyfive.groups.plugins",
  }

  for _, source in ipairs(sources) do
    local ok, module = pcall(require, source)
    if ok and module.get then
      for name, hl in pairs(module.get()) do
        groups[name] = hl
      end
    end
  end

  -- Merge user overrides
  for name, overrides in pairs(config.overrides) do
    if groups[name] then
      groups[name] = vim.tbl_extend("force", groups[name], overrides)
    else
      groups[name] = overrides
    end
  end

  -- Apply all highlight groups
  for name, hl in pairs(groups) do
    vim.api.nvim_set_hl(0, name, hl)
  end
end

---Set terminal colors
---@param p SynthwavePalette
function M.set_terminal_colors(p)
  -- Black
  vim.g.terminal_color_0 = p.bg_darker
  vim.g.terminal_color_8 = p.comment

  -- Red
  vim.g.terminal_color_1 = p.red
  vim.g.terminal_color_9 = p.red

  -- Green
  vim.g.terminal_color_2 = p.green
  vim.g.terminal_color_10 = p.green

  -- Yellow
  vim.g.terminal_color_3 = "#f3e70f"
  vim.g.terminal_color_11 = p.yellow

  -- Blue
  vim.g.terminal_color_4 = p.cyan_bright
  vim.g.terminal_color_12 = p.cyan_bright

  -- Magenta
  vim.g.terminal_color_5 = p.pink
  vim.g.terminal_color_13 = p.pink

  -- Cyan
  vim.g.terminal_color_6 = p.cyan_bright
  vim.g.terminal_color_14 = p.cyan_bright

  -- White
  vim.g.terminal_color_7 = p.fg
  vim.g.terminal_color_15 = p.fg
end

return M
