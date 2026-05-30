return {
    "akinsho/bufferline.nvim",
    event = "UIEnter",
    opts = {
        options = {
            diagnostics = "nvim_lsp",
            diagnostics_indicator = function (_, _, diagnostics_dict, _)
                local indicator = " "
                for level, number in pairs(diagnostics_dict) do
                    local symbol
                    if level == "error" then
                        symbol = " "
                    elseif level == "warning" then
                        symbol = " "
                    else
                        symbol = " "
                    end
                    indicator = indicator .. number .. symbol
                end
                return indicator
            end
        }
    },
    keys = {
        { "<A-[>", "<cmd>BufferLineCyclePrev<CR>", silent = true},
        { "<A-]>", "<cmd>BufferLineCycleNext<CR>", silent = true},
        { "<A-w>", "<cmd>bdelete<CR><C-w>h", silent = true},
    },
}
