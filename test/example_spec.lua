-- test/example_spec.lua
-- Example test file for statusline.nvim

local lu = require('luaunit')
local config = require('statusline.config')
local util = require('statusline.util')

TestExample = {}

function TestExample:test_config_defaults()
  local cfg = config.get()
  lu.assertEquals(cfg.left_sections, { 'winnr', 'filename' })
  lu.assertEquals(cfg.right_sections, { 'fileformat', 'cursorpos' })
  lu.assertEquals(cfg.enable_mode, true)
  lu.assertEquals(cfg.index_type, 3)
  lu.assertEquals(cfg.separator, 'arrow')
  lu.assertEquals(cfg.iseparator, 'arrow')
end

function TestExample:test_config_override()
  config.setup({
    enable_mode = false,
    index_type = 1,
  })
  local cfg = config.get()
  lu.assertEquals(cfg.enable_mode, false)
  lu.assertEquals(cfg.index_type, 1)
  -- Restore defaults
  config.setup({
    left_sections = { 'winnr', 'filename' },
    right_sections = { 'fileformat', 'cursorpos' },
    enable_mode = true,
    index_type = 3,
    separator = 'arrow',
    iseparator = 'arrow',
  })
end

function TestExample:test_circled_num_type3()
  -- Type 3 returns the number itself
  lu.assertEquals(util.circled_num(1, 3), 1)
  lu.assertEquals(util.circled_num(5, 3), 5)
end

function TestExample:test_circled_num_type0()
  -- Type 0 uses Unicode circled numbers
  local result = util.circled_num(1, 0)
  lu.assertNotNil(result)
  lu.assertTrue(#result > 0)
end

function TestExample:test_util_len_empty()
  lu.assertEquals(util.len(''), 4)
  lu.assertEquals(util.len(nil), 0)
end

return TestExample

