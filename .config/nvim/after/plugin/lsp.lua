local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}

  lsp_zero.default_keymaps({buffer = bufnr});
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
      'tsserver', 
      'eslint', 
      'rust_analyzer', 
  },
  handlers = {
    lsp_zero.default_setup,
    lua_ls = function()
        local lspconfig = require('lspconfig');
        local lua_opts = lsp_zero.nvim_lua_ls()
        lspconfig.lua_ls.setup(lua_opts)
    end,
  }
})

local lspconfig = require('lspconfig');
lspconfig.flow.setup{}
lspconfig.tsserver.setup{
   filetypes = { 'typescript', 'typescriptreact', 'typescript.tsx' },
   on_attach = function(client, bufnr)
       local filetype = vim.api.nvim_buf_get_option(bufnr, 'filetype')
       if filetype ~= 'typescript' and filetype ~= 'typescriptreact' and filetype ~= 'typescript.tsx' then
           -- This is a hack to prevent TS running on .js & .jsx files
           -- even when it is configured not to.
           client.stop()
       end
   end,
}
lspconfig.metals.setup{}

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}

cmp.setup({
  sources = {
    {name = 'path'},
    {name = 'nvim_lsp'},
    {name = 'nvim_lua'},
  },
  formatting = lsp_zero.cmp_format(),
  mapping = cmp.mapping.preset.insert({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ['<C-Space>'] = cmp.mapping.complete(),
  }),
})
