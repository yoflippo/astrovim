return {
  "lervag/vimtex",
  lazy = false,
  init = function()
    -- Viewer (pas aan als je iets anders gebruikt)
    -- vim.g.vimtex_view_method = "zathura"  -- Linux: zathura/okular; macOS: skim; Windows: sumatrapdf

    -- Compiler = latexmk + LuaLaTeX
    vim.g.vimtex_compiler_method = "latexmk"
    vim.g.vimtex_compiler_latexmk_engines = { ['_'] = '-lualatex' }
    vim.g.vimtex_compiler_latexmk = {
      build_dir = "build",  
      options = {
        -- "-cd", --run from source dir, werkt nog niet i.v.m. afbeeldingen die niet worden gevondne
        "-lualatex",
        "-file-line-error",
        "-synctex=1",
        "-interaction=nonstopmode",
        "-shell-escape",
      },
    }

    -- Korte quality-of-life
    vim.g.vimtex_quickfix_mode = 0       -- quickfix niet op elke warning openen
    vim.g.vimtex_log_ignore = { "Underfull", "Overfull" }
  end,
}
