return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
        n = {
          -- second key is the lefthand side of the map
          -- mappings seen under group name "Buffer"
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
          -- tables with the `name` key will be registered with which-key if it's installed
          -- this is useful for naming menus
          ["<Leader>b"] = { name = "Buffers" },
          ["<A-h>"] = { "<cmd>Ouroboros<cr>", desc = "Open source header" },
          -- quick save
          -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
        },
        t = {
          -- setting a mapping to false will disable it
          -- ["<esc>"] = false,
        },
        i = {
          --- MS
          -- Custom key mapping for Codeium suggestions
          -- Replace '<leader>cs' with your preferred key combination
          -- TAB
          ["<A-a>"] = { "codeium#Accept()", expr = true, silent = true, noremap = true, desc = "Accept Codeium suggestion" },
          ["<A-e>"] = { "codeium#CycleCompletions(1)", expr = true, silent = true, noremap = true, desc = "Cycle Codeium suggestions" },
          ["<A-d>"] = { "codeium#CycleCompletions(-1)", expr = true, silent = true, noremap = true, desc = "Cycle Codeium suggestions" },
          ["<A-s>"] = { "codeium#Clear()", expr = true, silent = true, noremap = true, desc = "Clear Codeium suggestion" },
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
          -- this mapping will only be set in buffers with an LSP attached
          K = {
            function()
              vim.lsp.buf.hover()
            end,
            desc = "Hover symbol details",
          },
          -- condition for only server with declaration capabilities
          gD = {
            function()
              vim.lsp.buf.declaration()
            end,
            desc = "Declaration of current symbol",
            cond = "textDocument/declaration",
          },
        },
      },
    },
  },
}

