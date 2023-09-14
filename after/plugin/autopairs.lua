require('nvim-autopairs').setup({
    check_ts = true,
    ts_config = {
        lua = { 'string' },
        javascript = { 'tremplate_string' },
        java = false,
    }
})

local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp = require('cmp')
cmp.event:on('confim_done', cmp_autopairs.on_confirm_done({ map_char = { tex = '' } }))
