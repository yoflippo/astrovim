return {
  -- 1. BELANGRIJK: Installeer de AstroCommunity repository
  -- Zonder deze regel kan hij de "pack.rust" niet vinden!
  "AstroNvim/astrocommunity",

  -- 2. Importeer de officiële Rust configuratie
  { import = "astrocommunity.pack.rust" },

  -- 3. Voeg je eigen sneltoetsen toe (bovenop de standaard configuratie)
  {
    "mrcjkb/rustaceanvim",
    opts = function(_, opts)
      opts.server = opts.server or {}
      local original_on_attach = opts.server.on_attach

      opts.server.on_attach = function(client, bufnr)
        -- Voer eerst de standaard AstroVim logica uit
        if original_on_attach then original_on_attach(client, bufnr) end

        -- Jouw Sneltoetsen
        local map_opts = { buffer = bufnr, silent = true }
        vim.keymap.set("n", "<Leader>r", function() vim.cmd.RustLsp("runnables") end, map_opts)
        vim.keymap.set("n", "<Leader>d", function() vim.cmd.RustLsp("debuggables") end, map_opts)
        vim.keymap.set("n", "<Leader>em", function() vim.cmd.RustLsp("expandMacro") end, map_opts)
        vim.keymap.set("n", "<Leader>od", function() vim.cmd.RustLsp("openDocs") end, map_opts)
      end
      return opts
    end,
  },
}
