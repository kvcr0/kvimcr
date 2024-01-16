(local M {})

(fn M.config []
  (let [tn (require :tokyonight)]
	(tn.setup {}))
  (vim.cmd "colorscheme tokyonight"))

M
