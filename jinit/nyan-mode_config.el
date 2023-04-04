(use-package nyan-mode
  :ensure
  )
(nyan-start-animation)
(nyan-toggle-wavy-trail)

(setq mode-line-format
      (list
       '(:eval (list (nyan-create)))
       ))

(provide 'nyan-mode_config)
