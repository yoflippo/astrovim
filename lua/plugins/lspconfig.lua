return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      clangd = {
        init_options = {
          compilationDatabasePath = "build", -- Adjust this path as needed
        },
      },
    },
  },
}
