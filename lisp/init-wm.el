(use-package exwm
  :init
  (require 'exwm-config)
  (exwm-config-default)
  (require 'exwm-systemtray)
  (exwm-systemtray-enable)
  (exwm-enable))

(provide 'init-wm)
