return {
  {
    "AstroNvim/astrocore",
    opts = {
      mappings = {
        n = {
          ["<leader>rb"] = { ":!cargo build<CR>", desc = "Cargo Build" },
          ["<leader>rr"] = { ":!cargo run<CR>", desc = "Cargo Run" },
          ["<leader>rt"] = { ":!cargo test<CR>", desc = "Cargo Test" },
          ["<leader>ru"] = { ":!cargo update<CR>", desc = "Cargo Update" },
          ["<leader>rB"] = { ":!cargo build --release<CR>", desc = "Cargo Build Release" },
        },
      },
    },
  },
}

