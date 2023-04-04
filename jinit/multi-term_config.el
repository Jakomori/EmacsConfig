;; "multi-term" allow you to invoke a bash in Emacs
(use-package multi-term
  :ensure
  :config
  (setq multi-term-program "/bin/bash")
  (setq multi-term-try-create t)
  (setq multi-term-dedicated-select-after-open-p t)
  (setq multi-term-dedicated-skip-other-window-p t)
  (setq multi-term-dedicated-window-height 10)
  )

(provide 'multi-term_config)
