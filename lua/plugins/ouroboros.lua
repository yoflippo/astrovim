return {
    {
        'jakemason/ouroboros',
        version = "*",
        requires = { { 'nvim-lua/plenary.nvim' } },
        opts = {
            extension_preferences_table = {
                c = { h = 2, hpp = 1 },
                h = { c = 2, cc = 1 },
                cpp = { hpp = 2, h = 1 },
                cc = { hpp = 2, h = 1 },
            },
            -- If this is true and the matching file is already open in a pane,
            -- we'll switch to that pane instead of opening it in the current buffer
            switch_to_open_pane_if_possible = false,
        },
    },
}
