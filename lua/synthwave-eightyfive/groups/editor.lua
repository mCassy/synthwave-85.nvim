-- Core editor highlight groups

local M = {}

---@return table<string, vim.api.keyset.highlight>
function M.get()
  local p = require("synthwave-eightyfive.palette")
  local config = require("synthwave-eightyfive.config")
  local util = require("synthwave-eightyfive.util")

  local transparent = config.transparent
  local bg = transparent and p.none or p.bg
  local bg_dark = transparent and p.none or p.bg_dark
  local bg_float = transparent and p.none or p.bg_float

  return {
    -- Basic UI
    Normal = { fg = p.fg, bg = bg },
    NormalNC = { fg = p.fg, bg = bg },
    NormalFloat = { fg = p.fg, bg = bg_float },
    FloatBorder = { fg = p.border, bg = bg_float },
    FloatTitle = { fg = p.pink, bg = bg_float, bold = true },

    -- Cursor
    Cursor = { fg = p.bg, bg = p.cursor },
    lCursor = { fg = p.bg, bg = p.cursor },
    CursorIM = { fg = p.bg, bg = p.cursor },
    CursorLine = { bg = p.bg_visual },
    CursorColumn = { bg = p.bg_visual },
    TermCursor = { fg = p.bg, bg = p.cyan_bright },
    TermCursorNC = { fg = p.bg, bg = p.fg_dimmed },

    -- Line numbers
    LineNr = { fg = p.fg_gutter },
    LineNrAbove = { fg = p.fg_gutter },
    LineNrBelow = { fg = p.fg_gutter },
    CursorLineNr = { fg = p.fg_gutter_active, bold = true },
    CursorLineFold = { fg = p.fg_gutter_active },
    CursorLineSign = { bg = p.bg_visual },

    -- Sign column
    SignColumn = { fg = p.fg_gutter, bg = bg },
    FoldColumn = { fg = p.fg_gutter, bg = bg },
    Folded = { fg = p.comment, bg = p.bg_visual },

    -- Status line
    StatusLine = { fg = p.fg_dimmed, bg = p.bg_dark },
    StatusLineNC = { fg = p.fg_muted, bg = p.bg_dark },
    WinBar = { fg = p.fg_muted, bg = bg },
    WinBarNC = { fg = p.fg_muted, bg = bg },

    -- Tab line
    TabLine = { fg = p.fg_muted, bg = p.bg_dark },
    TabLineFill = { bg = p.bg_dark },
    TabLineSel = { fg = p.fg, bg = p.bg },

    -- Windows and splits
    WinSeparator = { fg = p.border },
    VertSplit = { fg = p.border },

    -- Popup menu
    Pmenu = { fg = p.fg, bg = p.bg_popup },
    PmenuSel = { fg = p.fg, bg = p.bg_selection },
    PmenuSbar = { bg = p.bg_popup },
    PmenuThumb = { bg = p.fg_dimmed },
    PmenuKind = { fg = p.pink },
    PmenuKindSel = { fg = p.pink, bg = p.bg_selection },
    PmenuExtra = { fg = p.fg_muted },
    PmenuExtraSel = { fg = p.fg_muted, bg = p.bg_selection },

    -- Search and highlighting
    Search = { fg = p.fg, bg = util.blend(p.match, p.bg, 0.7) },
    IncSearch = { fg = p.bg, bg = p.orange },
    CurSearch = { fg = p.bg, bg = p.orange },
    Substitute = { fg = p.bg, bg = p.orange },

    -- Visual selection
    Visual = { bg = p.bg_selection },
    VisualNOS = { bg = p.bg_selection },

    -- Matching
    MatchParen = { fg = p.pink, bold = true },

    -- Messages
    ModeMsg = { fg = p.fg, bold = true },
    MsgArea = { fg = p.fg },
    MsgSeparator = { fg = p.border },
    MoreMsg = { fg = p.green },
    Question = { fg = p.green },
    ErrorMsg = { fg = p.red },
    WarningMsg = { fg = p.yellow },

    -- Special characters
    NonText = { fg = p.fg_gutter },
    SpecialKey = { fg = p.fg_gutter },
    Whitespace = { fg = p.indent_guide },
    EndOfBuffer = { fg = p.bg },

    -- Columns
    ColorColumn = { bg = p.bg_visual },
    Conceal = { fg = p.comment },

    -- Spelling
    SpellBad = { sp = p.red, undercurl = true },
    SpellCap = { sp = p.yellow, undercurl = true },
    SpellLocal = { sp = p.cyan, undercurl = true },
    SpellRare = { sp = p.purple, undercurl = true },

    -- Diff
    DiffAdd = { bg = p.diff_add_bg },
    DiffChange = { bg = util.blend(p.diff_change, p.bg, 0.2) },
    DiffDelete = { bg = p.diff_delete_bg },
    DiffText = { bg = util.blend(p.diff_text, p.bg, 0.8) },
    diffAdded = { fg = p.git_add },
    diffRemoved = { fg = p.git_delete },
    diffChanged = { fg = p.git_change },
    diffOldFile = { fg = p.orange },
    diffNewFile = { fg = p.green },
    diffFile = { fg = p.cyan },
    diffLine = { fg = p.comment },
    diffIndexLine = { fg = p.purple },

    -- Directory
    Directory = { fg = p.cyan },

    -- Wild menu
    WildMenu = { fg = p.fg, bg = p.bg_selection },

    -- Quick fix
    QuickFixLine = { bg = p.bg_visual, bold = true },
    qfLineNr = { fg = p.yellow },
    qfFileName = { fg = p.cyan },

    -- Debug
    Debug = { fg = p.orange },
    debugPC = { bg = p.bg_dark },
    debugBreakpoint = { fg = p.red, bg = p.bg_dark },

    -- Health
    healthError = { fg = p.red },
    healthSuccess = { fg = p.green },
    healthWarning = { fg = p.yellow },

    -- Help
    helpCommand = { fg = p.cyan },
    helpExample = { fg = p.comment },
  }
end

return M
