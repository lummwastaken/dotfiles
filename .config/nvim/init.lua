require('plugins')

-- options
vim.g.mapleader = ";"
vim.g.updatetime=100
vim.g.rainbow_active=1
vim.g.lion_squeeze_spaces=1
vim.g.better_whitespace_enabled=1
vim.g.strip_whitespace_on_save=1

vim.o.number = true
vim.o.ruler = true
vim.o.wrap = false
vim.o.hlsearch = true
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.cursorline = true
vim.o.scrolloff = 999
vim.o.list = true
vim.o.confirm = true

-- mappings
vim.keymap.set({'n'}, '<C-p>', ':Files<CR>')

vim.keymap.set({'n'}, '<F8>', ':TagbarToggle<CR>')
vim.keymap.set({'n'}, '<Leader>s', '<cmd>Outline<CR>')

vim.keymap.set({'n'}, '<F9>', function() require('dap').continue() end)
vim.keymap.set({'n'}, '<F10>', function() require('dap').step_over() end)
vim.keymap.set({'n'}, '<F11>', function() require('dap').step_into() end)
vim.keymap.set({'n'}, '<F12>', function() require('dap').step_out() end)
vim.keymap.set({'n'}, '<Leader>b', function() require('dap').toggle_breakpoint() end)
vim.keymap.set({'n'}, '<Leader>B', function() require('dap').set_breakpoint() end)
vim.keymap.set({'n'}, '<Leader>lp', function() require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end)
vim.keymap.set({'n'}, '<Leader>dr', function() require('dap').repl.open() end)
vim.keymap.set({'n'}, '<Leader>dl', function() require('dap').run_last() end)

vim.keymap.set({'n'}, '<Leader>vq', ':VimuxCloseRunner<CR>')
vim.keymap.set({'n'}, '<Leader>vp', ':VimuxPromptCommand<CR>')
vim.keymap.set({'n'}, '<Leader>vl', ':VimuxRunLastCommand<CR>')
vim.keymap.set({'n'}, '<Leader>vc', ':VimuxClearTerminalScreen<CR>')
vim.keymap.set({'n'}, '<Leader>vx', ':VimuxInterruptRunner<CR>')

-- lsp, cmp setup
vim.lsp.enable({'bashls', 'clangd', 'cmake'})
require('nvim-autopairs').setup({})
require('cmp-setup')

-- lsp_signature.nvim
require('lsp_signature').setup({
	hint_prefix = "",
	bind = true,
	floating_window = false,
})

-- nvim-dap
local dap = require('dap')
dap.adapters.gdb = {
	type = 'executable',
	command = 'gdb',
	args = {'interpreter=dap', '--eval-command', '--set print pretty on'}
}
dap.configurations.c = {
	{
		name = 'Launch',
		type = 'gdb',
		request = 'launch',
		program = function()
			return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
		end,
		args = {},
		cwd = "${workspaceFolder}",
		stopAtBeginningOfMainSubprogram = false
	},
	{
		name = 'Attach',
		type = 'gdb',
		request = 'attach',
		program = function()
			return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
		end,
		pid = function()
			local name = vim.fn.input('Executable name (filter): ')
			return require("dap.utils").pick_process({filter = name})
		end,
		cwd = '${workspaceFolder}'
	}
}
dap.configurations.cpp = dap.configurations.c

-- lualine
require('lualine').setup {
	sections = {
		lualine_a = {'mode'},
		lualine_b = {'branch', 'diff', 'diagnostics'},
		lualine_c = {'filename'},
		lualine_x = {'encoding', 'fileformat', 'filetype'},
		lualine_y = {'progress'},
		lualine_z = {'location'}
	},
}

-- nvim-web-devicons
require('nvim-web-devicons').setup()

-- Outline
require('outline').setup({})

vim.cmd('colorscheme gruvbox')
