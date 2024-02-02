(fn config []
  (let [lsp (require :lspconfig)
        capabilities ((. (require :cmp_nvim_lsp ) :default_capabilities))
        servers {
		  :fennel_ls (. (require :config.lsp.fennel) :config)
		  :rust_analyzer (. (require :config.lsp.rust) :config)
		  :clangd (. (require :config.lsp.clangd) :config)
		  :csharp_ls (. (require :config.lsp.csharp) :config)
		  :yamlls (. (require :config.lsp.yaml) :config)
		  :nil_ls (. (require :config.lsp.nil) :config)
        }]
  (each [name conf (pairs servers)]
    ;;(conf)
    (let [server (. lsp name)]
      (server.setup {: capabilities})))))

{: config}
