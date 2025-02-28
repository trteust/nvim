
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

-- Attempt to go to the header file of the same name. (Only for C files)
map('gh', function()
		if vim.fn.expand("%:e") == "c" then
			vim.cmd(":e %:r.h")
		end
	end, { desc = '[G]oto [H]eader file of the same name' })
map('gs', function()
		if vim.fn.expand("%:e") == "h" then
			vim.cmd(':e %:r.c')
		end
	end, { desc = '[G]oto [S]ource file of the same name' })
