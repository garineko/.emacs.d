(set-face-attribute 'default nil
                    :family "unifont"
                    :height 150
                    :weight 'normal
                    :width  'normal)

(global-display-line-numbers-mode t)

(use-package hl-line
  :ensure nil
  :hook (after-init . global-hl-line-mode))

(provide 'init-ui)
