(use-package pyim
  :init (setq default-input-method "pyim")
  :config
  (use-package pyim-basedict)
  (pyim-basedict-enable))

(provide 'init-im)
