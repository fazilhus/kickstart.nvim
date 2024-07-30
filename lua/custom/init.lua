require 'custom.set'
require 'custom.remap'

local aucmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

local highlight_yank = augroup('kickstart-highlight-yank', { clear = true })
aucmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = highlight_yank,
  callback = function()
    vim.highlight.on_yank()
  end,
})
