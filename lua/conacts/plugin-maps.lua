-- markdown
-- let g:mkdp_page_title = '${name}'
vim.keymap.set("n", "<leader>mu", "<Plug>MarkdownPreview")

-- nerd tree
vim.keymap.set("n", "<leader>pv", ":NERDTreeToggle<CR>")
vim.keymap.set("n", "<leader>nn", ":NERDTreeFocus<CR>")
-- switch window panes <ctrl>ww

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>gh', builtin.git_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>hh', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- harpoon
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>hm", function() mark.add_file() end, {})
vim.keymap.set("n", "<leader>he", function() ui.toggle_quick_menu() end, {})
vim.keymap.set("n", "<leader>h1", function() ui.nav_file(1) end, {})
vim.keymap.set("n", "<leader>h2", function() ui.nav_file(2) end, {})
vim.keymap.set("n", "<leader>h3", function() ui.nav_file(3) end, {})
