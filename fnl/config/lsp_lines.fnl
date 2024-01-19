(local M {})

(fn M.config []
  (let [lines (require :lsp_lines)]
	(vim.diagnostic.config {:virtual_text false})
	(lines.setup)
	(vim.diagnostic.config {:virtual_lines true})))
	(vim.keymap.set "n" "<leader>l" #((. (require :lsp_lines) :toggle)))
  ;; (. (require :ultimate-autopair) :setup ))

M
