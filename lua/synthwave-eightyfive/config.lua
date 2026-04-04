-- Synthwave '84 configuration

---@class SynthwaveItalics
---@field comments boolean Enable italics for comments
---@field keywords boolean Enable italics for keywords
---@field functions boolean Enable italics for functions
---@field strings boolean Enable italics for strings
---@field variables boolean Enable italics for variables
---@field parameters boolean Enable italics for parameters

---@class SynthwaveConfig
---@field transparent boolean Enable transparent background
---@field terminal_colors boolean Set terminal colors (0-15)
---@field italics boolean|SynthwaveItalics Enable italic styling
---@field overrides table<string, vim.api.keyset.highlight> Highlight group overrides

---@type SynthwaveConfig
local defaults = {
  transparent = false,
  terminal_colors = true,
  italics = {
    comments = true,
    keywords = false,
    functions = false,
    strings = false,
    variables = false,
    parameters = true,
  },
  overrides = {},
}

---@type SynthwaveConfig
local M = vim.deepcopy(defaults)

---@param opts? SynthwaveConfig
function M.setup(opts)
  opts = opts or {}

  -- Handle simple boolean italics option
  if type(opts.italics) == "boolean" then
    local enabled = opts.italics
    opts.italics = {
      comments = enabled,
      keywords = enabled,
      functions = enabled,
      strings = enabled,
      variables = enabled,
      parameters = enabled,
    }
  end

  -- Merge options
  for k, v in pairs(opts) do
    if k == "italics" and type(v) == "table" then
      M.italics = vim.tbl_extend("force", defaults.italics, v)
    elseif k == "overrides" then
      M.overrides = v
    elseif defaults[k] ~= nil then
      M[k] = v
    end
  end
end

function M.reset()
  for k, v in pairs(defaults) do
    M[k] = vim.deepcopy(v)
  end
end

---Helper to get italic style based on category
---@param category string
---@return string
function M.get_italic(category)
  if type(M.italics) == "table" and M.italics[category] then
    return "italic"
  end
  return ""
end

return M
