require('catppuccin').setup {
    flavour = "mocha",
    compile_path = vim.fn.stdpath "cache" .. "/catppuccin",
    color_overrides = {
        mocha = {
            base = "#000000",
            mantle = "#000000",
            crust = "#000000",
        },
    }
}

vim.cmd.colorscheme("catppuccin")
