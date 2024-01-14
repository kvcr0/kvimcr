(let [plugins [
           {1 :udayvir-singh/tangerine.nvim
		    :priority 1000
			:lazy false}
	       {1 :folke/lazy.nvim}
		   {1 :nvim-telescope/telescope.nvim
		    :config (. (require :config.telescope) :config)
			:dependencies ["nvim-lua/plenary.nvim"]}
	       {1 :altermo/ultimate-autopair.nvim
		    :config (. (require :config.autopair) :config)
			:event [:InsertEnter :CmdlineEnter]}

			;; cmp
            {1 :neovim/nvim-lspconfig}
            {1 :hrsh7th/cmp-nvim-lsp}
            {1 :hrsh7th/cmp-buffer}
            {1 :hrsh7th/cmp-path}
            {1 :hrsh7th/cmp-cmdline}
            {1 :hrsh7th/nvim-cmp
			 :config (. (require :config.cmp) :config)}

			;; snip
			{1 :L3MON4D3/LuaSnip
		     :vresion "v2.*"}
            {1 :saadparwaiz1/cmp_luasnip}
	      ]
      opts {
        :performance {
          :reset_packpath false
        }
      }]
  ((. (require "lazy") :setup) plugins opts))
