-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
--
--
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    ["<C-s>"] = { ":w!<cr>", desc = "Save File" }, -- change description but the same command
    ["J"] = { "mzJ`z", desc = "Join Lines but keep cursor" },
    ["<C-d>"] = { "<C-d>zz", desc = "Go down but cursor at center" },
    ["<C-u>"] = { "<C-u>zz", desc = "Go up but cursor at center" },
    ["n"] = { "nzzzv", desc = "Next search term but cursor at center" },
    ["N"] = { "Nzzzv", desc = "Previous search term but cursor at center" },
    ["<leader>s"] = {
      ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>",
      desc = "Search and replace word under cursor",
    },
    ["<leader>x"] = {
      "<cmd>!chmod u+x %<CR>",
      desc = "Make file executable",
    },
    ["<leader><leader>"] = {
      function() vim.cmd "so" end,
      desc = "Source file",
    },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  i = {
    ["<C-c>"] = {
      "<Esc>",
      desc = "Exit insert mode",
    },
  },
  x = {
    ["<leader>p"] = [["_dP]],
    ["<leader>d"] = [["_d]],
    ["<C-c>"] = "<Esc>",
  },
  v = {
    -- mappings only in visual mode
    ["J"] = {
      ":m '>+1<CR>gv=gv",
      desc = "Move line down",
    },
    ["K"] = {
      ":m '<-2<CR>gv=gv",
      desc = "Move line up",
    },
  },
}
