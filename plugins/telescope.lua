-- MS: settings so hidden files are also searched and .gitignore files are ignored
return {
  "nvim-telescope/telescope.nvim",
  config = function()
    require('telescope').setup{
      defaults = {
        -- Default vimgrep_arguments for searches outside live_grep
        vimgrep_arguments = {'rg', '--color=never', '--no-heading', '--with-filename', '--line-number', '--column', '--smart-case', '--hidden', '--max-depth=99'}
      },
      pickers = {
        live_grep = {
          -- Specific vimgrep_arguments for live_grep, including --no-ignore
          vimgrep_arguments = {'rg', '--no-ignore', '--color=never', '--no-heading', '--with-filename', '--line-number', '--column', '--smart-case', '--hidden', '--max-depth=99'}
        },
      },
    }
  end,
  opts = {
    -- your options here
  },
}

