local M = {}

local default = {
  left_sections = {'winnr', 'filename'},
  right_sections = {'fileformat', 'cursorpos'},
}

function M.setup(opt)
  default = vim.tbl_deep_extend('force', default, opt or {})
end

function M.get()
  return default
end

return M
