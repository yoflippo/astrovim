return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      rust = { "rustfmt" },
    },
    format_on_save = function(bufnr)
      -- Only enable for Rust in this example
      local ft = vim.bo[bufnr].filetype
      return ft == "rust"
    end,
  },
}

