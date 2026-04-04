-- Treesitter highlight groups
-- See :h treesitter-highlight-groups

local M = {}

---@return table<string, vim.api.keyset.highlight>
function M.get()
  local p = require("synthwave-eightyfive.palette")
  local config = require("synthwave-eightyfive.config")
  local util = require("synthwave-eightyfive.util")

  local italic_comments = config.get_italic("comments")
  local italic_keywords = config.get_italic("keywords")
  local italic_functions = config.get_italic("functions")
  local italic_strings = config.get_italic("strings")
  local italic_variables = config.get_italic("variables")
  local italic_parameters = config.get_italic("parameters")

  return {
    -- Identifiers
    ["@variable"] = { fg = p.pink, italic = italic_variables ~= "" },
    ["@variable.builtin"] = { fg = p.red, bold = true },
    ["@variable.parameter"] = { fg = p.pink, italic = italic_parameters ~= "" },
    ["@variable.parameter.builtin"] = { fg = p.pink, italic = italic_parameters ~= "" },
    ["@variable.member"] = { fg = p.pink },

    -- Constants
    ["@constant"] = { fg = p.orange },
    ["@constant.builtin"] = { fg = p.orange },
    ["@constant.macro"] = { fg = p.orange },

    -- Modules/Namespaces
    ["@module"] = { fg = p.pink },
    ["@module.builtin"] = { fg = p.pink },
    ["@label"] = { fg = p.yellow },

    -- Literals
    ["@string"] = { fg = p.orange_bright, italic = italic_strings ~= "" },
    ["@string.documentation"] = { fg = p.comment, italic = true },
    ["@string.regexp"] = { fg = p.orange },
    ["@string.escape"] = { fg = p.cyan },
    ["@string.special"] = { fg = p.cyan },
    ["@string.special.symbol"] = { fg = p.orange },
    ["@string.special.url"] = { fg = p.link, underline = true },
    ["@string.special.path"] = { fg = p.green },

    ["@character"] = { fg = p.orange_bright },
    ["@character.special"] = { fg = p.cyan },

    ["@boolean"] = { fg = p.orange },
    ["@number"] = { fg = p.orange },
    ["@number.float"] = { fg = p.orange },

    -- Types
    ["@type"] = { fg = p.red },
    ["@type.builtin"] = { fg = p.red },
    ["@type.definition"] = { fg = p.red },

    ["@attribute"] = { fg = p.yellow },
    ["@attribute.builtin"] = { fg = p.yellow },
    ["@property"] = { fg = p.pink },

    -- Functions
    ["@function"] = { fg = p.cyan, italic = italic_functions ~= "" },
    ["@function.builtin"] = { fg = p.cyan },
    ["@function.call"] = { fg = p.cyan },
    ["@function.macro"] = { fg = p.cyan },
    ["@function.method"] = { fg = p.cyan },
    ["@function.method.call"] = { fg = p.cyan },

    ["@constructor"] = { fg = p.red },

    -- Keywords
    ["@keyword"] = { fg = p.yellow, italic = italic_keywords ~= "" },
    ["@keyword.coroutine"] = { fg = p.yellow },
    ["@keyword.function"] = { fg = p.yellow },
    ["@keyword.operator"] = { fg = p.yellow },
    ["@keyword.import"] = { fg = p.green },
    ["@keyword.type"] = { fg = p.yellow },
    ["@keyword.modifier"] = { fg = p.yellow },
    ["@keyword.repeat"] = { fg = p.yellow },
    ["@keyword.return"] = { fg = p.yellow },
    ["@keyword.debug"] = { fg = p.orange },
    ["@keyword.exception"] = { fg = p.yellow },
    ["@keyword.conditional"] = { fg = p.yellow },
    ["@keyword.conditional.ternary"] = { fg = p.yellow },
    ["@keyword.directive"] = { fg = p.green },
    ["@keyword.directive.define"] = { fg = p.green },

    -- Operators and punctuation
    ["@operator"] = { fg = p.yellow },

    ["@punctuation.delimiter"] = { fg = p.fg_dark },
    ["@punctuation.bracket"] = { fg = p.fg_dark },
    ["@punctuation.special"] = { fg = p.yellow },

    -- Comments
    ["@comment"] = { fg = p.comment, italic = italic_comments ~= "" },
    ["@comment.documentation"] = { fg = p.comment, italic = true },
    ["@comment.error"] = { fg = p.red, bg = util.blend(p.red, p.bg, 0.2) },
    ["@comment.warning"] = { fg = p.yellow, bg = util.blend(p.yellow, p.bg, 0.2) },
    ["@comment.todo"] = { fg = p.yellow, bg = p.bg_visual, bold = true },
    ["@comment.note"] = { fg = p.cyan, bg = util.blend(p.cyan, p.bg, 0.2) },

    -- Markup (for markdown, etc.)
    ["@markup"] = { fg = p.fg },
    ["@markup.strong"] = { fg = p.cyan_alt, bold = true },
    ["@markup.italic"] = { fg = p.cyan_alt, italic = true },
    ["@markup.strikethrough"] = { fg = p.fg, strikethrough = true },
    ["@markup.underline"] = { underline = true },

    ["@markup.heading"] = { fg = p.pink, bold = true },
    ["@markup.heading.1"] = { fg = p.pink, bold = true },
    ["@markup.heading.2"] = { fg = p.pink, bold = true },
    ["@markup.heading.3"] = { fg = p.pink, bold = true },
    ["@markup.heading.4"] = { fg = p.pink, bold = true },
    ["@markup.heading.5"] = { fg = p.pink, bold = true },
    ["@markup.heading.6"] = { fg = p.pink, bold = true },

    ["@markup.quote"] = { fg = p.green },
    ["@markup.math"] = { fg = p.cyan },
    ["@markup.environment"] = { fg = p.green },

    ["@markup.link"] = { fg = p.yellow },
    ["@markup.link.label"] = { fg = p.yellow },
    ["@markup.link.url"] = { fg = p.green, italic = true, underline = true },

    ["@markup.raw"] = { fg = p.green },
    ["@markup.raw.block"] = { fg = p.green },

    ["@markup.list"] = { fg = p.pink },
    ["@markup.list.checked"] = { fg = p.green },
    ["@markup.list.unchecked"] = { fg = p.comment },

    -- Diff
    ["@diff.plus"] = { fg = p.git_add },
    ["@diff.minus"] = { fg = p.git_delete },
    ["@diff.delta"] = { fg = p.git_change },

    -- Tags (HTML/XML/JSX)
    ["@tag"] = { fg = p.green },
    ["@tag.builtin"] = { fg = p.green },
    ["@tag.attribute"] = { fg = p.yellow, italic = true },
    ["@tag.delimiter"] = { fg = p.cyan },

    -- Misc
    ["@none"] = {},
    ["@conceal"] = { fg = p.comment },

    ["@definition"] = { underline = true, sp = p.border },
    ["@scope"] = { bold = true },
    ["@reference"] = { underline = true, sp = p.border },

    -- Language-specific overrides

    -- JSX/TSX
    ["@tag.tsx"] = { fg = p.red },
    ["@constructor.tsx"] = { fg = p.red },
    ["@tag.javascript"] = { fg = p.red },
    ["@constructor.javascript"] = { fg = p.red },

    -- Lua
    ["@constructor.lua"] = { fg = p.fg_dark },

    -- Python
    ["@variable.parameter.python"] = { fg = p.green },

    -- YAML
    ["@property.yaml"] = { fg = p.green },

    -- JSON
    ["@property.json"] = { fg = p.green },

    -- TOML
    ["@property.toml"] = { fg = p.green },

    -- PHP
    ["@variable.php"] = { fg = p.fg },
    ["@variable.member.php"] = { fg = p.cyan_alt },
    ["@variable.parameter.php"] = { fg = p.fg, italic = italic_parameters ~= "" },
    ["@property.php"] = { fg = p.cyan_alt },

    -- PHP Docblocks
    ["@keyword.phpdoc"] = { fg = p.cyan },
    ["@keyword.return.phpdoc"] = { fg = p.cyan },
    ["@keyword.modifier.phpdoc"] = { fg = p.cyan },
    ["@attribute.phpdoc"] = { fg = p.cyan },
    ["@type.phpdoc"] = { fg = p.red },
    ["@variable.parameter.phpdoc"] = { fg = p.pink, italic = italic_parameters ~= "" },
    ["@comment.documentation.php"] = { fg = p.comment, italic = true },
  }
end

return M
