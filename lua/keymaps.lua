-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.keymap.set('n', '<leader>rl', ':source %<CR>', { desc = 'Execute current lua file - run lua' })
vim.keymap.set(
  'n',
  '<leader>rc',
  ':! cd %:h && g++ % -o %:r.out && ./%:t:r.out<CR>',
  { noremap = true, silent = true, desc = 'Execute current cpp file - run cpp' }
)

local map = vim.api.nvim_set_keymap
local table_opts = { noremap = true, silent = true }

-- Move to previous/next
map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', table_opts)
map('n', '<A-.>', '<Cmd>BufferNext<CR>', table_opts)
-- Re-order to previous/next
map('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', table_opts)
map('n', '<A->>', '<Cmd>BufferMoveNext<CR>', table_opts)
-- Goto buffer in position...
map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', table_opts)
map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', table_opts)
map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', table_opts)
map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', table_opts)
map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', table_opts)
map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', table_opts)
map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', table_opts)
map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', table_opts)
map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', table_opts)
map('n', '<A-0>', '<Cmd>BufferLast<CR>', table_opts)
-- Pin/unpin buffer
map('n', '<A-p>', '<Cmd>BufferPin<CR>', table_opts)
-- Goto pinned/unpinned buffer
--                 :BufferGotoPinned
--                 :BufferGotoUnpinned
-- Close buffer
map('n', '<A-c>', '<Cmd>BufferClose<CR>', table_opts)
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
map('n', '<C-p>', '<Cmd>BufferPick<CR>', table_opts)
-- Sort automatically by...
map('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', table_opts)
map('n', '<Space>bn', '<Cmd>BufferOrderByName<CR>', table_opts)
map('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', table_opts)
map('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', table_opts)
map('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', table_opts)
