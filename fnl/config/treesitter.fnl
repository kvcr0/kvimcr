(local M {})

(fn M.config []
  (let [ts (require :nvim-treesitter.configs)]
	(ts.setup {
      :ensure_installed ["c" "cpp" "c_sharp" "rust" "fennel" "lua"]
	  :highlight {
	    :enable true
	  }
	})))

M
