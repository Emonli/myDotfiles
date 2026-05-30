return {
    "mason-org/mason.nvim",
    event = "VeryLazy",
    dependencies = {
        "neovim/nvim-lspconfig",
        "mason-org/mason-lspconfig.nvim",
    },
    opts = {},
    config = function (_, opts)
        require("mason").setup(opts)

        -- setup function
        local function setup_lsp(name, config)
            local registry = require("mason-registry")
            local ok, pkg = pcall(registry.get_package, name)
            if ok and not pkg:is_installed() then
                pkg:install()
            end

            local mlsp = require("mason-lspconfig")
            local mappings = mlsp.get_mappings()
            local lsp_name = mappings.package_to_lspconfig[name]

            vim.lsp.config(lsp_name, config)
            vim.lsp.enable(lsp_name)
        end


        setup_lsp("lua-language-server",  {
            settings = {
                Lua = {
                    diagnostics = { globals = { "vim" } },
                },
            },
        })

        setup_lsp("gopls", {})

        setup_lsp("pyright", {})

        setup_lsp("clangd", {})

        setup_lsp("html-lsp", {})
        setup_lsp("css-lsp", {})
        setup_lsp("typescript-language-server", {})

        vim.diagnostic.config({
            virtual_text = {
                spacing = 6,
                prefix = "⚠",
            },
            underline = true,
            severity_sort = true,
            update_in_insert = false,
        })
    end
}

