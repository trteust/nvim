
vim.g.mapleader = " "
vim.g.maplocalleader = ","

local map = function(keys, func, options, mode)
	mode = mode or 'n'
	vim.keymap.set(mode, keys, func, options)
end

map('jj', '<Esc>', {}, 'i')

map('<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
map('<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
map('<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
map('<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
