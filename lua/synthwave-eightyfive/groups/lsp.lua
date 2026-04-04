-- LSP and diagnostics highlight groups

local M = {}

---@return table<string, vim.api.keyset.highlight>
function M.get()
  local p = require("synthwave-eightyfive.palette")
  local config = require("synthwave-eightyfive.config")
  local util = require("synthwave-eightyfive.util")

  return {
    -- Diagnostics
    DiagnosticError = { fg = p.red },
    DiagnosticWarn = { fg = p.yellow },
    DiagnosticInfo = { fg = p.cyan },
    DiagnosticHint = { fg = p.green },
    DiagnosticOk = { fg = p.green },

    DiagnosticVirtualTextError = { fg = p.red, bg = util.blend(p.red, p.bg, 0.15) },
    DiagnosticVirtualTextWarn = { fg = p.yellow, bg = util.blend(p.yellow, p.bg, 0.15) },
    DiagnosticVirtualTextInfo = { fg = p.cyan, bg = util.blend(p.cyan, p.bg, 0.15) },
    DiagnosticVirtualTextHint = { fg = p.green, bg = util.blend(p.green, p.bg, 0.15) },
    DiagnosticVirtualTextOk = { fg = p.green, bg = util.blend(p.green, p.bg, 0.15) },

    DiagnosticUnderlineError = { sp = p.red, undercurl = true },
    DiagnosticUnderlineWarn = { sp = p.yellow, undercurl = true },
    DiagnosticUnderlineInfo = { sp = p.cyan, undercurl = true },
    DiagnosticUnderlineHint = { sp = p.green, undercurl = true },
    DiagnosticUnderlineOk = { sp = p.green, undercurl = true },

    DiagnosticFloatingError = { fg = p.red },
    DiagnosticFloatingWarn = { fg = p.yellow },
    DiagnosticFloatingInfo = { fg = p.cyan },
    DiagnosticFloatingHint = { fg = p.green },
    DiagnosticFloatingOk = { fg = p.green },

    DiagnosticSignError = { fg = p.red },
    DiagnosticSignWarn = { fg = p.yellow },
    DiagnosticSignInfo = { fg = p.cyan },
    DiagnosticSignHint = { fg = p.green },
    DiagnosticSignOk = { fg = p.green },

    -- Deprecated and unnecessary
    DiagnosticDeprecated = { fg = p.comment, strikethrough = true },
    DiagnosticUnnecessary = { fg = p.comment },

    -- LSP references
    LspReferenceText = { bg = p.bg_visual },
    LspReferenceRead = { bg = p.bg_visual },
    LspReferenceWrite = { bg = p.bg_visual, bold = true },

    -- LSP signature
    LspSignatureActiveParameter = { fg = p.orange, bold = true, underline = true },

    -- LSP codelens
    LspCodeLens = { fg = p.comment },
    LspCodeLensSeparator = { fg = p.comment },

    -- LSP inlay hints
    LspInlayHint = { fg = p.comment, bg = util.blend(p.bg_visual, p.bg, 0.5) },

    -- Semantic tokens
    -- These link to treesitter groups by default but we can override
    ["@lsp.type.class"] = { fg = p.red },
    ["@lsp.type.comment"] = { link = "@comment" },
    ["@lsp.type.decorator"] = { fg = p.pink },
    ["@lsp.type.enum"] = { fg = p.red },
    ["@lsp.type.enumMember"] = { fg = p.orange },
    ["@lsp.type.function"] = { link = "@function" },
    ["@lsp.type.interface"] = { fg = p.red },
    ["@lsp.type.keyword"] = { link = "@keyword" },
    ["@lsp.type.macro"] = { fg = p.green },
    ["@lsp.type.method"] = { link = "@function.method" },
    ["@lsp.type.namespace"] = { link = "@module" },
    ["@lsp.type.number"] = { link = "@number" },
    ["@lsp.type.operator"] = { link = "@operator" },
    ["@lsp.type.parameter"] = { link = "@variable.parameter" },
    ["@lsp.type.property"] = { link = "@property" },
    ["@lsp.type.regexp"] = { link = "@string.regexp" },
    ["@lsp.type.string"] = { link = "@string" },
    ["@lsp.type.struct"] = { fg = p.red },
    ["@lsp.type.type"] = { link = "@type" },
    ["@lsp.type.typeParameter"] = { fg = p.red },
    ["@lsp.type.variable"] = { link = "@variable" },

    -- Modifiers
    ["@lsp.mod.declaration"] = {},
    ["@lsp.mod.definition"] = {},
    ["@lsp.mod.readonly"] = { fg = p.orange },
    ["@lsp.mod.static"] = {},
    ["@lsp.mod.deprecated"] = { strikethrough = true },
    ["@lsp.mod.abstract"] = { italic = true },
    ["@lsp.mod.async"] = {},
    ["@lsp.mod.modification"] = {},
    ["@lsp.mod.documentation"] = { italic = true },
    ["@lsp.mod.defaultLibrary"] = {},

    -- Type + Modifier combinations
    ["@lsp.typemod.function.declaration"] = { fg = p.cyan, bold = true },
    ["@lsp.typemod.function.defaultLibrary"] = { fg = p.cyan },
    ["@lsp.typemod.method.declaration"] = { fg = p.cyan, bold = true },
    ["@lsp.typemod.variable.readonly"] = { fg = p.orange },
    ["@lsp.typemod.variable.globalScope"] = { fg = p.pink, bold = true },
    ["@lsp.typemod.parameter.declaration"] = { link = "@variable.parameter" },
    ["@lsp.typemod.property.readonly"] = { fg = p.pink },
    ["@lsp.typemod.class.declaration"] = { fg = p.red, bold = true },
    ["@lsp.typemod.interface.declaration"] = { fg = p.red, bold = true },
  }
end

return M
