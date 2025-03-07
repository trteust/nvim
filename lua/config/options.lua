-- Signal to other plugins that nerd_fonts are installed
vim.g.have_nerd_font = true

-- Indent break statements
vim.opt.breakindent = true

-- Saves Undo History
vim.opt.undofile = true

-- Smart case-insensitive searching
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on
vim.opt.signcolumn = "yes"

-- Decrease the update time
vim.opt.updatetime = 250

-- Decrease the timeout for keymappings
vim.opt.timeoutlen = 300

-- Split to the right and below 
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Show whitespace chars
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions
vim.opt.inccommand = "split"

-- Show current line
vim.opt.cursorline = true

-- Don't let the cursor get too close to the bottom or top
vim.opt.scrolloff = 15

-- Show two columns for numberlines absolute | relative
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.statuscolumn = '%s %l %r '

-- Use the mouse to set location
vim.opt.mouse = 'a'

-- Don't show the mode, it's already there NOTE Turn on later
-- vim.opt.showmode = false

-- Set tab width and behaviour
vim.opt.tabstop = 8
vim.opt.shiftwidth = 8
vim.opt.expandtab = true
vim.opt.cindent = true
vim.opt.cinwords = "if,else,while,do,for"

vim.schedule(function()
	vim.opt.clipboard = 'unnamedplus'
end)
