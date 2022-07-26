local o = vim.opt

o.backup = false
o.clipboard = o.clipboard + { 'unnamedplus' }
o.cmdheight = 2
o.expandtab = true
o.fileencoding = 'utf-8'
o.laststatus = 3 --global statusline
o.winbar='%=%m %f'
o.mouse = 'a'
o.number = true
o.relativenumber = true
o.scrolloff = 8
o.shiftwidth = 4
o.showmode = false
o.showtabline = 2
o.sidescrolloff = 8
o.signcolumn = 'yes'
o.splitbelow = true
o.splitright = true
o.tabstop = 4
o.timeoutlen = 300
o.ttimeoutlen = 10
o.termguicolors = true
o.updatetime =  300
o.whichwrap = o.whichwrap + {
	['h'] = true,
	['l'] = true,
	['<'] = true,
	['>'] = true,
	['['] = true,
	[']'] = true
}
o.wrap = false
o.writebackup = false

