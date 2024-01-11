(let [plugins [
	       :folke/lazy.nvim
	      ]
      opts {
        :performance {
          :reset_packpath false
        }
      }]
  ((. (require "lazy") :setup) plugins opts))
