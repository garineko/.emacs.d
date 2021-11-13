(use-package borland-blue-theme
  :init (load-theme 'borland-blue t))

(set-face-attribute 'default nil
                    :family "unifont"
                    :height 90
                    :weight 'normal
                    :width  'normal)

(global-display-line-numbers-mode t)

(provide 'init-ui)
