return {
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
        -- use opts = {} for passing setup options
        -- this is equalent to setup({}) function
    },
    {
        'windwp/nvim-ts-autotag',
        config = function()
            opts = {
                -- Defaults
                enable_close = true,           -- Auto close tags
                enable_rename = true,          -- Auto rename pairs of tags
                enable_close_on_slash = true, -- Auto close on trailing </
                -- Override individual filetype configs, these take priority
                per_filetype = {
                    ["html"] = {
                        enable_close = true
                    },
                    ["tsx"] = {
                        enable_close = true
                    }
                }
            }
            require('nvim-ts-autotag').setup(opts)
        end
    }
}
