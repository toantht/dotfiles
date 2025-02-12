local opt = vim.opt

opt.inccommand = "split"

opt.smartcase = true
opt.ignorecase = true

opt.number = true
opt.relativenumber = true

opt.splitbelow = true
opt.splitright = true

opt.scrolloff = 8
opt.signcolumn = "yes"
opt.shada = { "'10", "<0", "s10", "h" }

opt.swapfile = false
opt.backup = false

opt.formatoptions:remove("o")

opt.wrap = true
opt.linebreak = true

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

opt.more = false

opt.foldmethod = "manual"

-- opt.clipboard = "unnamedplus"

opt.mouse = "a"

opt.hlsearch = false
opt.incsearch = true

opt.termguicolors = true
