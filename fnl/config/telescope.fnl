(local M {})

(fn M.config []
  ;; (. (require :telescope) :setup {})
  (let [builtin (require :telescope.builtin)]
	(vim.keymap.set "n" "<leader>ff" builtin.find_files {})))

M
