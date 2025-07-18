local lsp_zero = require('lsp-zero')
lsp_zero.preset('recommended')
lsp_zero.setup()

vim.keymap.set("n", "K", function()
  vim.lsp.buf.hover({ border = "rounded" })
end, { silent = true })

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
      'ts_ls', 
      'eslint', 
      'rust_analyzer', 
  },
  handlers = {
    lsp_zero.default_setup,
    lua_ls = function()
      local lua_opts = lsp_zero.nvim_lua_ls()
      require('lspconfig').lua_ls.setup(lua_opts)
    end,
  }
})

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
