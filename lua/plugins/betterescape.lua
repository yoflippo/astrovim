return {
  "max397574/better-escape.nvim",
  opts = {
    -- 1. Zet standaard mappings uit om te voorkomen dat 'ij' ergens verstopt zit
    default_mappings = false,
    -- 2. Definieer handmatig ALLEEN de combinaties die je wél wilt
    mappings = {
      i = { -- Insert mode
        j = {
          k = "<Esc>", -- jk -> escape
          j = "<Esc>", -- jj -> escape
        },
      },
      c = { -- Command mode
        j = {
          k = "<Esc>",
          j = "<Esc>",
        },
      },
      t = { -- Terminal mode
        j = {
          k = "<Esc>",
        },
      },
      v = { -- Visual mode
        j = {
          k = "<Esc>",
        },
      },
      s = { -- Select mode
        j = {
          k = "<Esc>",
        },
      },
    },
  },
}
