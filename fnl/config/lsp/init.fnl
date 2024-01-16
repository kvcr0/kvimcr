(fn config []
  (let [lsp (require :lspconfig)
        capabilities (. (require :cmp_nvim_lsp ) :default_capabilities)
        servers {
		  :fennel_ls (require :config.lsp.fennel)
		  :rust (require :config.lsp.rust)
        }]
  (lsp.fennel_ls.setup {: capabilities})))

{: config}
