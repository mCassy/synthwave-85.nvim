-- Lualine theme for Synthwave '84

local p = require("synthwave-eightyfive.palette")

return {
  normal = {
    a = { fg = p.bg, bg = p.cyan, gui = "bold" },
    b = { fg = p.fg, bg = p.bg_visual },
    c = { fg = p.fg_muted, bg = p.bg_dark },
  },
  insert = {
    a = { fg = p.bg, bg = p.green, gui = "bold" },
    b = { fg = p.fg, bg = p.bg_visual },
    c = { fg = p.fg_muted, bg = p.bg_dark },
  },
  visual = {
    a = { fg = p.bg, bg = p.pink, gui = "bold" },
    b = { fg = p.fg, bg = p.bg_visual },
    c = { fg = p.fg_muted, bg = p.bg_dark },
  },
  replace = {
    a = { fg = p.bg, bg = p.red, gui = "bold" },
    b = { fg = p.fg, bg = p.bg_visual },
    c = { fg = p.fg_muted, bg = p.bg_dark },
  },
  command = {
    a = { fg = p.bg, bg = p.yellow, gui = "bold" },
    b = { fg = p.fg, bg = p.bg_visual },
    c = { fg = p.fg_muted, bg = p.bg_dark },
  },
  terminal = {
    a = { fg = p.bg, bg = p.orange, gui = "bold" },
    b = { fg = p.fg, bg = p.bg_visual },
    c = { fg = p.fg_muted, bg = p.bg_dark },
  },
  inactive = {
    a = { fg = p.fg_dimmed, bg = p.bg_dark },
    b = { fg = p.fg_dimmed, bg = p.bg_dark },
    c = { fg = p.fg_dimmed, bg = p.bg_dark },
  },
}
