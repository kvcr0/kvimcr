(local M {})

(fn M.config []
  (#((. (require :luasnip.loaders.from_vscode) :lazy_load))))

M
