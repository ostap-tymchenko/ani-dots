local colorscheme = "kanagawa-dragon"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end

require('glow').setup({
  style = "dark",
  height_ratio = 1,
  width_ratio = 1,
  border = "double"
})
