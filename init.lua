vim.g.dap_virtual_text = true
vim.opt.colorcolumn = "120"

-- Disable persistent undo for files in /private directory
vim.api.nvim_create_autocmd("BufReadPre", { pattern = "/private/*", command = "set noundofile" })

-- Enable persistent undo for other files
vim.opt.undofile = true

-- Enable line numbers and set them to be relative
vim.cmd[[set number relativenumber]]

-- Make relative line numbers the default for all buffers
vim.cmd[[au BufEnter * set number relativenumber]]

-- O comando F12 agora vai para definicoes assim como o comando gd
vim.api.nvim_set_keymap('n', '<F12>', '<cmd>lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })

-- Create a command to call ChatGPTInit
vim.cmd("command! ChatGPTInit lua ChatGPTInit()")

-- Mover linha para cima com Alt + K ou seta para cima
vim.api.nvim_set_keymap('n', '<A-k>', ':m .-2<CR>==', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-Up>', ':m .-2<CR>==', { noremap = true, silent = true })

-- Mover linha para baixo com Alt + J ou seta para baixo
vim.api.nvim_set_keymap('n', '<A-j>', ':m .+1<CR>==', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-Down>', ':m .+1<CR>==', { noremap = true, silent = true })

-- Mover linhas selecionadas para cima com Alt + K ou seta para cima
vim.api.nvim_set_keymap('x', '<A-k>', ':m \'<-2<CR>gv=gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '<M-Up>', ':m \'<-2<CR>gv=gv', { noremap = true, silent = true })

-- Mover linhas selecionadas para baixo com Alt + J ou seta para baixo
vim.api.nvim_set_keymap('x', '<A-j>', ':m \'>+1<CR>gv=gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '<M-Down>', ':m \'>+1<CR>gv=gv', { noremap = true, silent = true })

-- Copiar linha para baixo com Alt + Shift + J ou seta para baixo
vim.api.nvim_set_keymap('n', '<A-S-j>', ':copy .+0<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-M-Down>', ':copy .+1<CR>', { noremap = true, silent = true })

-- Copiar linha para cima com Alt + Shift + K ou seta para cima
vim.api.nvim_set_keymap('n', '<A-S-k>', ':t .-1<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-S-Up>', ':t .-1<CR>', { noremap = true, silent = true })

-- Copiar linhas selecionadas para baixo com Alt + Shift + J ou seta para baixo
vim.api.nvim_set_keymap('x', '<A-S-j>', ':copy \'>+0<CR>gv=gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '<M-S-Down>', ':copy \'>+0<CR>gv=gv', { noremap = true, silent = true })

-- Copiar linhas selecionadas para cima com Alt + Shift + K ou seta para cima
vim.api.nvim_set_keymap('x', '<A-S-k>', ':copy \'<-1<CR>gv=gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '<M-S-Up>', ':copy \'<-1<CR>gv=gv', { noremap = true, silent = true })

