-- Utility functions for color manipulation

local M = {}

---Convert hex color to RGB values
---@param hex string Hex color (e.g., "#ff7edb")
---@return number, number, number
function M.hex_to_rgb(hex)
  hex = hex:gsub("#", "")
  return tonumber(hex:sub(1, 2), 16), tonumber(hex:sub(3, 4), 16), tonumber(hex:sub(5, 6), 16)
end

---Convert RGB values to hex color
---@param r number Red (0-255)
---@param g number Green (0-255)
---@param b number Blue (0-255)
---@return string
function M.rgb_to_hex(r, g, b)
  return string.format("#%02x%02x%02x", r, g, b)
end

---Blend a color with a background color
---@param fg string Foreground hex color
---@param bg string Background hex color
---@param alpha number Alpha value (0-1)
---@return string
function M.blend(fg, bg, alpha)
  local fg_r, fg_g, fg_b = M.hex_to_rgb(fg)
  local bg_r, bg_g, bg_b = M.hex_to_rgb(bg)

  local r = math.floor(fg_r * alpha + bg_r * (1 - alpha))
  local g = math.floor(fg_g * alpha + bg_g * (1 - alpha))
  local b = math.floor(fg_b * alpha + bg_b * (1 - alpha))

  return M.rgb_to_hex(r, g, b)
end

---Darken a color by blending with black
---@param hex string Hex color
---@param amount number Amount to darken (0-1)
---@return string
function M.darken(hex, amount)
  return M.blend(hex, "#000000", 1 - amount)
end

---Lighten a color by blending with white
---@param hex string Hex color
---@param amount number Amount to lighten (0-1)
---@return string
function M.lighten(hex, amount)
  return M.blend(hex, "#ffffff", 1 - amount)
end

return M
