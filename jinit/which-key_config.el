(use-package which-key
  :ensure
  )

;; Allow C-h to trigger which-key before it is done automatically
(setq which-key-show-early-on-C-h t)
;; make sure which-key doesn't show normally but refreshes quickly after it is
;; triggered.
(setq which-key-idle-delay 10000)
(setq which-key-idle-secondary-delay 0.05)
(which-key-mode)
(setq which-key-popup-type 'side-window)
(setq which-key-side-window-location 'bottom)

(provide 'which-key_config)
