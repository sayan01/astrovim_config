return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "folke/todo-comments.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = {},
    event = "User AstroFile",
    cmd = { "TodoQuickFix" },
    keys = {
      {
        "<leader>T",
        "<cmd>TodoTelescope<cr>",
        desc = "Open TODOs in Telescope",
      },
    },
  },
  {
    "mbbill/undotree",
    cmd = "UndotreeToggle",
    init = function() vim.g.undotree_WindowLayout = 2 end,
    keys = {
      {
        "<leader>uU",
        "<cmd>UndotreeToggle<cr>",
        desc = "Toggle the undo tree",
      },
    },
  },
  {
    "tpope/vim-surround",
    keys = {
      {
        "c",
        "<Plug>VSurround",
        desc = "Change surrounding",
      },
      {
        "d",
        "<Plug>Dsurround",
        desc = "Delete surrounding",
      },
      {
        "y",
        "<Plug>Ysurround",
        desc = "Yank surrounding",
      },
      {
        "S",
        "<Plug>VgSurround",
        desc = "Change surrounding",
      },
      {
        "gS",
        "<Plug>VgSurround",
        desc = "Change surrounding",
      },
    },
    {
      "mattn/emmet-vim",
      ft = { "html", "css", "javascript", "javascriptreact", "typescript", "typescriptreact" },
      keys = {
        {
          ",,",
          "<Plug>(emmet-expand-abbr)",
          desc = "Expand abbreviation",
        },
        {
          ",;",
          "<Plug>(emmet-expand-line)",
          desc = "Expand line",
        },
        {
          ",/",
          "<Plug>(emmet-toggle-comment)",
          desc = "Toggle comment",
        },
        {
          ",-",
          "<Plug>(emmet-split-join-tag)",
          desc = "Split/join tag",
        },
        {
          ",a",
          "<Plug>(emmet-anchorize-action)",
          desc = "Anchorize",
        },
        {
          ",A",
          "<Plug>(emmet-anchorize-abbr)",
          desc = "Anchorize abbreviation",
        },
        {
          ",k",
          "<Plug>(emmet-kill-line)",
          desc = "Kill line",
        },
        {
          ",n",
          "<Plug>(emmet-move-next)",
          desc = "Move next",
        },
        {
          ",N",
          "<Plug>(emmet-move-prev)",
          desc = "Move previous",
        },
        {
          ",p",
          "<Plug>(emmet-preview)",
          desc = "Preview",
        },
        {
          ",r",
          "<Plug>(emmet-remove-tag)",
          desc = "Remove tag",
        },
        {
          ",R",
          "<Plug>(emmet-rename-tag)",
          desc = "Rename tag",
        },
        {
          ",s",
          "<Plug>(emmet-split-join-tag)",
          desc = "Split/join tag",
        },
        {
          ",t",
          "<Plug>(emmet-toggle-action)",
          desc = "Toggle action",
        },
        {
          ",u",
          "<Plug>(emmet-update-tag)",
          desc = "Update tag",
        },
        {
          ",U",
          "<Plug>(emmet-update-tag)",
          desc = "Update tag",
        },
        {
          ",x",
          "<Plug>(emmet-expand-word)",
          desc = "Expand word",
        },
        {
          ",X",
          "<Plug>(emmet-expand-word)",
          desc = "Expand word",
        },
        {
          ",z",
          "<Plug>(emmet-preview-clear)",
          desc = "Preview clear",
        },
      },
    },
  },
}
