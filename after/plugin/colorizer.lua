require("colorizer").setup {
    filetypes = { "*" },
    user_default_options = {
        mode = "background",
        tailwind = true,                                -- Enable tailwind colors
    },
    -- all the sub-options of filetypes apply to buftypes
    buftypes = {},
}
