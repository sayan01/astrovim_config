return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- add more things to the ensure_installed table protecting against community packs modifying it
    opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
      "lua",
      "luadoc",
      "java",
      "vim",
      "vimdoc",
      "php",
      "perl",
      "python",
      "regex",
      "sql",
      "c",
      "cpp",
      "html",
      "javascript",
      "vue",
      "json",
      "jq",
      "css",
      "dart",
      "diff",
      "git_config",
      "gitignore",
      "gitcommit",
      "query",
      "rust",
      "astro",
      "bash",
      "bibtex",
      "latex",

    })
  end,
}
