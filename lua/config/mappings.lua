-- Leader and local leader assignment for commands and plugin specific commands
vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- Little macro to map keys
local map = function(keys, func, options, mode)
	mode = mode or 'n'
	vim.keymap.set(mode, keys, func, options)
end

-- Quick escape from insert.
map('jj', '<Esc>', {}, 'i')

-- Quick accept/escape for command mode.
map('jj', '<CR>', {}, 'c')
map('jk', '<Esc><cmd>nohlsearch<CR>', {}, 'c')

-- Clear highlighting after search
map('<Esc>', '<cmd>nohlsearch<CR>', {})

-- Use Ctrl + direction to navigate splits.
map('<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
map('<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
map('<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
map('<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })

-- TODO: Set up smart gotos based on current extension.

-- Attempt to go to the header file of the same name. (Only for C files)
map('gh', function()
		if vim.fn.expand("%:e") == "c" then
			vim.cmd(":e %:r.h")
		end
	end, { desc = '[G]oto [H]eader file of the same name' })

-- Same but for source files.
map('gs', function()
		if vim.fn.expand("%:e") == "h" then
			vim.cmd(':e %:r.c')
		end
	end, { desc = '[G]oto [S]ource file of the same name' })

