(use-package solarized-theme
  :init (load-theme 'solarized-dark t))

(set-face-attribute 'default nil
                    :family "unifont"
                    :height 150
                    :weight 'normal
                    :width  'normal)

(global-display-line-numbers-mode t)

(provide 'init-ui)
