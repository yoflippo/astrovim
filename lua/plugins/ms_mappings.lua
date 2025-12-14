return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- Normal Mode
        n = {
          -- NEW: Check Health shortcut
          ["<Leader>ch"] = { "<cmd>checkhealth<cr>", desc = "Check Health" },

          -- Standard Buffer Mappings
          ["<Leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
          ["<leader><leader>"] = { "<cmd>HopWord<cr>", desc = "Jump to a word using 'Hop'" },
          ["<Leader>bD"] = {
            function()
              require("astroui.status").heirline.buffer_picker(function(bufnr)
                require("astrocore.buffer").close(bufnr)
              end)
            end,
            desc = "Pick to close",
          },
          ["<Leader>b"] = { name = "Buffers" },
          ["<A-h>"] = { "<cmd>Ouroboros<cr>", desc = "Open source header" },
        },
        
        -- Insert mode (i) was removed because it only contained Codium keys
        
        t = {
          -- ["<esc>"] = false,
        },
      },
    },
  },
  {
    "AstroNvim/astrolsp",
    ---@type AstroLSPOpts
    opts = {
      mappings = {
        n = {
          K = {
            function() vim.lsp.buf.hover() end,
            desc = "Hover symbol details",
          },
          gD = {
            function() vim.lsp.buf.declaration() end,
            desc = "Declaration of current symbol",
            cond = "textDocument/declaration",
          },
        },
      },
    },
  },
}
