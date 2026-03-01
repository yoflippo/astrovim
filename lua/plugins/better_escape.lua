-- In je plugin bestand (bijv. lua/plugins/user.lua)
return {
  "max397574/better-escape.nvim",
  opts = {
    timeout = 100, -- Verhoog dit naar 300 als je langzaam typt, verlaag naar 150 als het traag voelt
    default_mappings = false,
    mappings = {
      i = { -- Insert mode
        j = {
          k = "<Esc>",
          j = "<Esc>",
        },
      },
      c = { -- Command mode (optioneel)
        j = { k = "<Esc>", j = "<Esc>" },
      },
      t = { -- Terminal mode (optioneel)
        j = { k = "<C-\\><C-n>" },
      },
    },
  },
}
