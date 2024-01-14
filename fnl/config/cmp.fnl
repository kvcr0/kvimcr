(local M {})

(fn M.config []
  (let [cmp (require :cmp)
			luasnip (require :luasnip)]
	(let [opt {
	  :mapping
	  {
	  :<Tab> (cmp.mapping
			   (fn [fallback]
				 (if (cmp.visible)
					 (cmp.select_next_item)
					 (luasnip.jumpable)
					 (luasnip.jump 1)
					 (fallback)))
			   [:i :s :c])
	  :<S-Tab> (cmp.mapping
			   (fn [fallback]
				 (if (cmp.visible)
					 (cmp.select_next_item)
					 (luasnip.jumpable)
					 (luasnip.jump -1)
					 (fallback)))
			   [:i :s :c])
	  ;;:<CR> (cmp.mapping {
		      ;; :i (cmp.mapping.confirm {:select true})})
	  :<CR> (cmp.mapping.confirm {:select true})
	  :<C-e> (cmp.mapping.abort)
	  :<C-f> (cmp.mapping.scroll_docs 4)
	  :<C-b> (cmp.mapping.scroll_docs -4)
	  }
	  :sources
	  [{:name "nvim_lsp"}
       {:name "luasnip"}
	   {:name "buffer"}
	   {:name "nvim_lua"}
	   {:name "path"}]}]
	(cmp.setup opt))))

M
