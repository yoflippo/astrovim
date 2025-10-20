-- return {
--     {
--         'anuvyklack/windows.nvim',
--         dependencies = { 'anuvyklack/middleclass' },
--         event = "BufWinEnter",  -- Example event
--         config = function()
--             require('windows').setup()
--         end,
--     },
-- }
--
--
-- ~/.config/nvim/lua/user/plugins.lua
return {
    {
        'anuvyklack/windows.nvim',
        dependencies = { 'anuvyklack/middleclass','anuvyklack/animation.nvim' },
        config = function()
            require('windows').setup({
                autowidth = {          -- |windows.autowidth|
                    enable = true,
                    winwidth = 5,     -- |windows.winwidth|
                    filetype = {      -- |windows.autowidth.filetype|
                        help = 2,
                    },
                },
                ignore = {             -- |windows.ignore|
                    buftype = { "quickfix" },
                    filetype = { "NvimTree", "neo-tree", "undotree", "gundo" },
                },
                animation = {
                    enable = true,
                    duration = 300,
                    fps = 30,
                    easing = "in_out_sine",
                },
            })
        end,
    },
}

