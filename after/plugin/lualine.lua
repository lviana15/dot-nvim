require('lualine').setup {
    opts = {
        theme = "catppuccin",
        options = {
            component_separators = " ",
            section_separators = { left = "", right = "" },
        },
        extensions = { "quickfix" },
    },
}
