return {
  {
    "AstroNvim/astrocore",
    opts = {
      mappings = {
        n = {
          ["<leader>cb"] = { ":!cargo build<CR>", desc = "Cargo Build" },
          ["<leader>cr"] = { ":!cargo run<CR>", desc = "Cargo Run" },
          ["<leader>ct"] = { ":!cargo test<CR>", desc = "Cargo Test" },
        },
      },
    },
  },
}

