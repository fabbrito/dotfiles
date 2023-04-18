--[[ -- default separators
local separators = {
  none = { "", "" },
  left = { "", "  " },
  right = { "  ", "" },
  center = { "  ", "  " },
  tab = { "", " " },
  breadcrumbs = "  ",
  path = "  ",
} ]]
-- define the separators between each section
local separators = {
  left = { "", "" }, --{ "", " " }, -- separator for the left side of the statusline
  right = { "█", "" }, --{ " ", "" }, -- { " ", "" }, -- separator for the right side of the statusline
  -- tab = { "", "" },
}
return separators
