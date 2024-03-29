-- set vim options here (vim.<first_key>.<second_key> = value)
return {
  opt = {
    -- set to true or false etc.
    relativenumber = true, -- sets vim.opt.relativenumber
    number = true, -- sets vim.opt.number
    spell = true, -- sets vim.opt.spell
    wrap = true, -- sets vim.opt.wrap
    tabstop = 2, -- sets vim.opt.tabstop
    shiftwidth = 2, -- sets vim.opt.shiftwidth
    softtabstop = 2, -- sets vim.opt.softtabstop
    expandtab = true, -- sets vim.opt.expandtab
    smartindent = true, -- sets vim.opt.smartindent
    autoindent = true, -- sets vim.opt.autoindent
    swapfile = false, -- sets vim.opt.swapfile
    backup = false, -- sets vim.opt.backup
    undofile = true, -- sets vim.opt.undofile
    undodir = vim.fn.stdpath "cache" .. "/undo", -- sets vim.opt.undodir
    incsearch = true, -- sets vim.opt.incsearch
    ignorecase = true, -- sets vim.opt.ignorecase
    smartcase = true, -- sets vim.opt.smartcase
    termguicolors = true, -- sets vim.opt.termguicolors
    scrolloff = 8, -- sets vim.opt.scrolloff
    signcolumn = "yes:1", -- sets vim.opt.signcolumn
    updatetime = 50, -- sets vim.opt.updatetime
    colorcolumn = "80", -- sets vim.opt.colorcolumn
  },
  g = {
    mapleader = " ", -- sets vim.g.mapleader
    autoformat_enabled = true, -- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
    cmp_enabled = true, -- enable completion at start
    autopairs_enabled = true, -- enable autopairs at start
    diagnostics_mode = 3, -- set the visibility of diagnostics in the UI (0=off, 1=only show in status line, 2=virtual text off, 3=all on)
    icons_enabled = true, -- disable icons in the UI (disable if no nerd font is available, requires :PackerSync after changing)
    ui_notifications_enabled = true, -- disable notifications when toggling UI elements
  },
}
-- If you need more control, you can use the function()...end notation
-- return function(local_vim)
--   local_vim.opt.relativenumber = true
--   local_vim.g.mapleader = " "
--   local_vim.opt.whichwrap = vim.opt.whichwrap - { 'b', 's' } -- removing option from list
--   local_vim.opt.shortmess = vim.opt.shortmess + { I = true } -- add to option list
--
--   return local_vim
-- end
