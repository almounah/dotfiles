-- To manage LSP installation
require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

-- To bridge mason and nvim-lspconfig
require("mason-lspconfig").setup()
-- Automatic bridging
require("mason-lspconfig").setup_handlers {
    function(server_name) -- default handler (optional)
        require("lspconfig")[server_name].setup {
            -- Automatic custom remapping
            on_attach = function(_, _)
                vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
                vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
                vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
                vim.keymap.set("n", "gr", require('telescope.builtin').lsp_references, {})
                vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, opts)
                vim.keymap.set("n", "<leader>[", function() vim.diagnostic.goto_next() end, opts)
                vim.keymap.set("n", "<leader>]", function() vim.diagnostic.goto_prev() end, opts)
                vim.keymap.set('n', '<leader>f', function() vim.lsp.buf.format { async = true } end, opts)
            end,
            -- Automatic Code Completion
            capabilities = require('cmp_nvim_lsp').default_capabilities()

        }
    end
}

local signs = { Error = "󰅚 ", Warn = "󰀪 ", Hint = "󰌶 ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end
