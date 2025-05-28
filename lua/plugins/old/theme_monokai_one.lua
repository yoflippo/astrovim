return {
  {
    "AstroNvim/astroui",
    ---@type AstroUIOpts
    opts = {
      colorscheme = "one_monokai", -- Set the global colorscheme for AstroVim
    },
  },
  {
    "cpea2506/one_monokai.nvim", -- Specify the plugin to be configured
    opts = {
      transparent = true,        -- Enable transparent window background
      colors = {
        -- lmao = "#ffffff",        -- Add a new color named "lmao" with white value
        pink = "#ec6075", -- Replace the default pink color with a custom shade
        fg = "#abb2bf",
        bg = "#282c34",
        gray = "#676e7b",
        pink = "#e06c75",
        green = "#98c379",
        cyan = "#56b6c2",
        aqua = "#61afef",
        yellow = "#e5c07b",
        purple = "#c678dd",
        peanut = "#f6d5a4",
        orange = "#d19a66",
        dark_pink = "#ff008c",
        dark_cyan = "#2b8db3",
        red = "#f75f5f",
        dark_red = "#d03770",
        white = "#d7d7ff",
        light_gray = "#9ca3b2",
        dark_gray = "#4b5261",
        vulcan = "#383a3e",
        dark_green = "#2d2e27",
        dark_blue = "#26292f",
        black = "#1e2024",
        none = "NONE",
      },
      themes = function(colors)
        -- Custom function to modify specific highlight groups
        return {
          -- Normal = { bg = colors.lmao },                    -- Set normal text background to the new "lmao" color
          DiffChange = { fg = colors.white:darken(0.3) },   -- Adjust diff change color to a darker white
          ErrorMsg = { fg = colors.pink, standout = true }, -- Set error messages to pink and make them stand out
          ["@lsp.type.keyword"] = { link = "@keyword" }     -- Link LSP keyword highlighting to regular keyword highlighting
        }
      end,
      italics = true, -- EN/Disable italics globally for this color scheme
    },
  },
}
