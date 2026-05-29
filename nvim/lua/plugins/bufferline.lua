return {
    "akinsho/bufferline.nvim",
    event = "UIEnter",
    opts = {},
    keys = {
        { "<A-[>", "<cmd>BufferLineCyclePrev<CR>", silent = true},
        { "<A-]>", "<cmd>BufferLineCycleNext<CR>", silent = true},
        { "<A-w>", "<cmd>bdelete<CR><C-w>h", silent = true},
    },
}
