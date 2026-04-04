-- Synthwave '84 color palette
-- Ported from https://github.com/robb0wen/synthwave-vscode

---@class SynthwavePalette
local M = {
  -- Background colors
  bg = "#262335",
  bg_dark = "#241b2f",
  bg_darker = "#171520",
  bg_float = "#232530",
  bg_popup = "#2a2139",
  bg_visual = "#34294f",
  bg_selection = "#3d3555",
  bg_search = "#D18616",
  bg_highlight = "#37294d",

  -- Foreground colors
  fg = "#ffffff",
  fg_dark = "#e0e0e0",
  fg_muted = "#b0b0b0",
  fg_dimmed = "#909090",
  fg_gutter = "#6a6a7a",
  fg_gutter_active = "#a0a0b0",

  -- Primary accent colors (the iconic synthwave colors)
  pink = "#ff7edb",
  cyan = "#36f9f6",
  cyan_bright = "#03edf9",
  cyan_alt = "#2ee2fa",
  green = "#72f1b8",
  yellow = "#fede5d",
  orange = "#f97e72",
  orange_bright = "#ff8b39",
  red = "#fe4450",
  purple = "#b893ce",
  magenta = "#a148ab",

  -- UI colors
  border = "#495495",
  comment = "#848bbd",
  line_highlight = "#3d3560",
  indent_guide = "#444251",
  indent_guide_active = "#6a4a70",

  -- Diff colors
  diff_add = "#09f7a0",
  diff_add_bg = "#1a3a2a",
  diff_change = "#b893ce",
  diff_delete = "#fe4450",
  diff_delete_bg = "#3a1a1a",
  diff_text = "#206d4b",

  -- Git colors
  git_add = "#72f1b8",
  git_change = "#b893ce",
  git_delete = "#fe4450",
  git_ignored = "#5a5a6a",

  -- Misc
  link = "#f97e72",
  cursor = "#f97e72",
  match = "#D18616",
  none = "NONE",
}

return M
