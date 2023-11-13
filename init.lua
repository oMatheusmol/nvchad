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


-- Create a command to call ChatGPTInit
vim.cmd("command! ChatGPTInit lua ChatGPTInit()")
