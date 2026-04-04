-- Standard Vim syntax highlight groups

local M = {}

---@return table<string, vim.api.keyset.highlight>
function M.get()
  local p = require("synthwave-eightyfive.palette")
  local config = require("synthwave-eightyfive.config")

  local italic_comments = config.get_italic("comments")
  local italic_keywords = config.get_italic("keywords")
  local italic_functions = config.get_italic("functions")
  local italic_strings = config.get_italic("strings")
  local italic_variables = config.get_italic("variables")
  local italic_parameters = config.get_italic("parameters")

  return {
    -- Comments (italic in original theme)
    Comment = { fg = p.comment, italic = italic_comments ~= "" },

    -- Constants
    Constant = { fg = p.orange },
    String = { fg = p.orange_bright, italic = italic_strings ~= "" },
    Character = { fg = p.orange_bright },
    Number = { fg = p.orange },
    Boolean = { fg = p.orange },
    Float = { fg = p.orange },

    -- Identifiers
    Identifier = { fg = p.pink, italic = italic_variables ~= "" },
    Function = { fg = p.cyan, italic = italic_functions ~= "" },

    -- Statements
    Statement = { fg = p.yellow },
    Conditional = { fg = p.yellow, italic = italic_keywords ~= "" },
    Repeat = { fg = p.yellow, italic = italic_keywords ~= "" },
    Label = { fg = p.yellow },
    Operator = { fg = p.yellow },
    Keyword = { fg = p.yellow, italic = italic_keywords ~= "" },
    Exception = { fg = p.yellow },

    -- Preprocessor
    PreProc = { fg = p.green },
    Include = { fg = p.green },
    Define = { fg = p.green },
    Macro = { fg = p.green },
    PreCondit = { fg = p.green },

    -- Types
    Type = { fg = p.red },
    StorageClass = { fg = p.yellow },
    Structure = { fg = p.red },
    Typedef = { fg = p.red },

    -- Special
    Special = { fg = p.cyan },
    SpecialChar = { fg = p.cyan },
    Tag = { fg = p.green },
    Delimiter = { fg = p.fg_dark },
    SpecialComment = { fg = p.comment, italic = true },
    Debug = { fg = p.orange },

    -- Underlined
    Underlined = { fg = p.link, underline = true },

    -- Ignore
    Ignore = { fg = p.comment },

    -- Error
    Error = { fg = p.red },

    -- Todo
    Todo = { fg = p.yellow, bg = p.bg_visual, bold = true },

    -- Markup (for markdown, etc.)
    Bold = { bold = true },
    Italic = { italic = true },
    Title = { fg = p.pink, bold = true },

    -- HTML/XML
    htmlTag = { fg = p.cyan },
    htmlEndTag = { fg = p.cyan },
    htmlTagName = { fg = p.green },
    htmlArg = { fg = p.yellow, italic = true },
    htmlSpecialChar = { fg = p.orange },
    htmlBold = { bold = true },
    htmlItalic = { italic = true },
    htmlH1 = { fg = p.pink, bold = true },
    htmlH2 = { fg = p.pink, bold = true },
    htmlH3 = { fg = p.pink, bold = true },
    htmlH4 = { fg = p.pink, bold = true },
    htmlH5 = { fg = p.pink, bold = true },
    htmlH6 = { fg = p.pink, bold = true },
    htmlLink = { fg = p.link, underline = true },

    -- XML
    xmlTag = { fg = p.cyan },
    xmlEndTag = { fg = p.cyan },
    xmlTagName = { fg = p.green },
    xmlAttrib = { fg = p.yellow, italic = true },

    -- CSS
    cssClassName = { fg = p.red },
    cssClassNameDot = { fg = p.red },
    cssIdentifier = { fg = p.cyan },
    cssProp = { fg = p.green },
    cssAttr = { fg = p.orange },
    cssColor = { fg = p.orange },
    cssVendor = { fg = p.green },
    cssPseudoClass = { fg = p.orange },
    cssPseudoClassId = { fg = p.cyan },
    cssSelectorOp = { fg = p.fg_dark },
    cssTagName = { fg = p.green },
    cssImportant = { fg = p.red, bold = true },

    -- JavaScript
    javaScriptIdentifier = { fg = p.pink },
    javaScriptFunction = { fg = p.yellow },
    javaScriptNumber = { fg = p.cyan_alt },
    javaScriptNull = { fg = p.orange },
    javaScriptBraces = { fg = p.fg_dark },

    -- TypeScript
    typescriptImport = { fg = p.green },
    typescriptExport = { fg = p.green },
    typescriptVariable = { fg = p.yellow },
    typescriptIdentifier = { fg = p.red, bold = true },
    typescriptBraces = { fg = p.fg_dark },

    -- JSON
    jsonKeyword = { fg = p.green },
    jsonString = { fg = p.orange_bright },
    jsonNumber = { fg = p.orange },
    jsonBoolean = { fg = p.orange },
    jsonNull = { fg = p.orange },
    jsonQuote = { fg = p.fg_dark },
    jsonBraces = { fg = p.fg_dark },

    -- YAML
    yamlKey = { fg = p.green },
    yamlAnchor = { fg = p.pink },
    yamlAlias = { fg = p.pink },
    yamlDocumentHeader = { fg = p.orange_bright },

    -- Markdown
    markdownH1 = { fg = p.pink, bold = true },
    markdownH2 = { fg = p.pink, bold = true },
    markdownH3 = { fg = p.pink, bold = true },
    markdownH4 = { fg = p.pink, bold = true },
    markdownH5 = { fg = p.pink, bold = true },
    markdownH6 = { fg = p.pink, bold = true },
    markdownHeadingDelimiter = { fg = p.pink },
    markdownCode = { fg = p.green },
    markdownCodeBlock = { fg = p.green },
    markdownCodeDelimiter = { fg = p.green },
    markdownBlockquote = { fg = p.green },
    markdownListMarker = { fg = p.pink },
    markdownOrderedListMarker = { fg = p.pink },
    markdownRule = { fg = p.comment },
    markdownHeadingRule = { fg = p.comment },
    markdownUrlDelimiter = { fg = p.fg_dark },
    markdownLinkDelimiter = { fg = p.fg_dark },
    markdownLinkTextDelimiter = { fg = p.fg_dark },
    markdownUrl = { fg = p.green, italic = true },
    markdownUrlTitleDelimiter = { fg = p.yellow },
    markdownLinkText = { fg = p.yellow },
    markdownIdDeclaration = { fg = p.yellow },
    markdownBold = { fg = p.cyan_alt, bold = true },
    markdownItalic = { fg = p.cyan_alt, italic = true },

    -- Lua
    luaFunc = { fg = p.cyan },
    luaFunction = { fg = p.yellow },
    luaTable = { fg = p.fg_dark },

    -- Python
    pythonBuiltin = { fg = p.cyan },
    pythonBuiltinFunc = { fg = p.cyan },
    pythonBuiltinObj = { fg = p.orange },
    pythonFunction = { fg = p.cyan },
    pythonDecorator = { fg = p.pink },
    pythonDecoratorName = { fg = p.pink },
    pythonInclude = { fg = p.green },
    pythonImport = { fg = p.green },
    pythonOperator = { fg = p.yellow },
    pythonStatement = { fg = p.yellow },

    -- Ruby
    rubyClass = { fg = p.yellow },
    rubyModule = { fg = p.yellow },
    rubyDefine = { fg = p.yellow },
    rubyInclude = { fg = p.green },
    rubyInterpolation = { fg = p.green },
    rubyInterpolationDelimiter = { fg = p.green },
    rubySymbol = { fg = p.orange },
    rubyStringDelimiter = { fg = p.orange_bright },
    rubyBlockParameter = { fg = p.pink, italic = italic_parameters ~= "" },

    -- Go
    goPackage = { fg = p.yellow },
    goImport = { fg = p.yellow },
    goBuiltins = { fg = p.cyan },
    goType = { fg = p.green },
    goStruct = { fg = p.green },
    goDeclaration = { fg = p.yellow },
    goFunction = { fg = p.cyan },
    goConditional = { fg = p.yellow },
    goVar = { fg = p.yellow },
    goConst = { fg = p.yellow },

    -- Rust
    rustModPath = { fg = p.pink },
    rustSelf = { fg = p.red, bold = true },
    rustSuper = { fg = p.red },
    rustDerive = { fg = p.pink },
    rustEnumVariant = { fg = p.cyan },
    rustMacro = { fg = p.cyan },
    rustAttribute = { fg = p.comment },
    rustDeriveTrait = { fg = p.green },
    rustCommentLineDoc = { fg = p.comment, italic = true },

    -- Shell
    shVariable = { fg = p.pink },
    shShellVariables = { fg = p.pink },
    shFunction = { fg = p.cyan },
    shStatement = { fg = p.yellow },
    shCommandSub = { fg = p.pink },

    -- Vim script
    vimVar = { fg = p.pink },
    vimFunc = { fg = p.cyan },
    vimFunction = { fg = p.cyan },
    vimUserFunc = { fg = p.cyan },
    vimCommand = { fg = p.yellow },
    vimLet = { fg = p.yellow },
    vimOption = { fg = p.pink },
    vimSet = { fg = p.yellow },
  }
end

return M
