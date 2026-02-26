return {
  'saghen/blink.cmp',
  version = '*',
  dependencies = 'rafamadriz/friendly-snippets',

  opts = {
    keymap = { preset = 'default' },

    appearance = {
      use_nvim_cmp_as_default = true,
      nerd_font_variant = 'mono'
    },
    completion = {
        ghost_text = {
          enabled = true,
        },
    },
    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
    },
  },
}
