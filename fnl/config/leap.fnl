(local M {})

(fn M.config []
   ((. (require :leap) :create_default_mappings)))

M
