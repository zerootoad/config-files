vim.cmd [[
call plug#begin('~/.local/share/nvim/plugged')

Plug 'neovim/nvim-lspconfig'

call plug#end()
]]

local lspconfig = require('lspconfig')
local configs = require('lspconfig.configs')

if not configs.discord_rpc then
    configs.discord_rpc = {
        default_config = {
            cmd = { "discord-rpc-lsp" },  -- Make sure this is in your PATH
            filetypes = { "*" },          -- Attach to all filetypes
            root_dir = function(fname)
                return lspconfig.util.root_pattern('.git')(fname) or vim.loop.cwd()
            end,
            settings = {},
        },
    }
end

lspconfig.discord_rpc.setup({
    on_attach = function(client, bufnr)
        print("DiscordRPC started!")
    end,
})

