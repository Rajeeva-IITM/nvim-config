-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("custom.evil_lualine")

-- This line is required for codeium to work
local cmp = require("cmp")
cmp.setup({
  mapping = {
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        vim.fn["codeium#Accept"]()
        fallback()
      end
    end, { "i", "s" }),
  },
})

require("colorizer").setup()
