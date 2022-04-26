(use-package lsp-mode
  :hook ((rust-mode . lsp-deferred)
         (lsp-mode . lsp-enable-which-key-integration)
	 (before-save . lsp-format-buffer)
	 (before-save . lsp-organize-imports))
  :commands (lsp lsp-deferred lsp-format-buffer lsp-organize-imports)
  :config
  (setq lsp-auto-guess-root t
	lsp-headerline-breadcrumb-enable nil
	lsp-log-io nil)
  (define-key lsp-mode-map (kbd "s-l") lsp-command-map))

(use-package lsp-ui
  :after lsp-mode
  :commands lsp-ui-mode
  :init
  (setq lsp-ui-doc-include-signature t
        lsp-ui-sideline-ignore-duplicate t)
  (add-hook 'lsp-mode-hook 'lsp-ui-mode)
  (add-hook 'lsp-ui-mode-hook 'lsp-modeline-code-actions-mode)
  :config
  (define-key lsp-ui-mode-map [remap xref-find-definitions] #'lsp-ui-peek-find-definitions)
  (define-key lsp-ui-mode-map [remap xref-find-references] #'lsp-ui-peek-find-references))

(use-package lsp-ivy :commands lsp-ivy-workspace-symbol)

(use-package rust-mode)

(use-package sly)
(setq inferior-lisp-program "sbcl")

(use-package racket-mode)

(provide 'init-lsp)
