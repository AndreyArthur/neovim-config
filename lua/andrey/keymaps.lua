local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap('', '<space>', '<nop>', opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Modes
--   normal_mode = 'n',
--   insert_mode = 'i',
--   visual_mode = 'v',
--   visual_block_mode = 'x',
--   term_mode = 't',
--   command_mode = 'c',

-- Normal --

--  Use system clipboard
keymap('n', '<leader>y', '"+y', opts)
keymap('n', '<leader>p', '"+p', opts)

-- Navigate between buffers and tabs
keymap('n', '<leader>bh', ':bprevious<cr>', opts)
keymap('n', '<leader>bl', ':bnext<cr>', opts)
keymap('n', '<leader>th', 'gT', opts)
keymap('n', '<leader>tl', 'gt', opts)
keymap('n', '<leader>tn', ':tabnew<cr>', opts)

-- Enter in terminal mode
keymap('n', '<leader>tt', ':terminal<cr>', opts)

keymap('n', 'k', 'gk', opts)
keymap('n', 'j', 'gj', opts)

-- Edit from current file path
vim.api.nvim_set_keymap('n', '<leader>E', ':let @-=expand(\'%:p:h\')<cr> :e <c-r>-/', { noremap = true, silent = false })

-- Insert --

-- hjkl navigation in insert mode
keymap('i', '<c-k>', '<up>', opts)
keymap('i', '<c-j>', '<down>', opts)
keymap('i', '<c-h>', '<left>', opts)
keymap('i', '<c-l>', '<right>', opts)


-- Visual --

-- Stay in indent mode
keymap('v', '<', '<gv', opts)
keymap('v', '>', '>gv', opts)
--  Use system clipboard
keymap('v', '<leader>y', '"+y', opts)
keymap('v', '<leader>p', '"+p', opts)

-- Plugins --

-- Nvim Tree
keymap('n', '<leader>e', ':NvimTreeToggle<cr>', opts)

-- Fugitive
keymap('n', '<leader>g', ':Git<cr>', opts)
