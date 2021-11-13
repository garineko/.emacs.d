(add-to-list 'load-path
	     (expand-file-name (concat user-emacs-directory "lisp")))

(setq custom-file
      (expand-file-name "custom.el" user-emacs-directory))

(require 'init-builtin)
(require 'init-elpa)
(require 'init-ui)
(require 'init-wm)
(require 'init-im)
(require 'init-pkgs)
(require 'company-english-helper)
(global-set-key (kbd "s-e") 'toggle-company-english-helper)
(require 'init-lsp)
