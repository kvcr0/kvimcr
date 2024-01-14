(local M {})

(fn M.config []
  (local autopair (require :ultimate-autopair))
  (autopair.setup))
  ;; (. (require :ultimate-autopair) :setup ))

M
