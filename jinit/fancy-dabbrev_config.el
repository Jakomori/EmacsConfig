(use-package fancy-dabbrev
  :ensure
  :commands (fancy-dabbrev-mode)
  :config
  (setq fancy-dabbrev-preview-delay 0.1)
  (setq fancy-dabbrev-preview-context 'before-non-word)

  (setq fancy-dabbrev-expansion-on-preview-only t)
  (setq fancy-dabbrev-indent-command 'tab-to-tab-stop))

;; (define-key evil-insert-state-map (kbd "<tab>") 'fancy-dabbrev-expand-or-indent))

(provide 'fancy-dabbrev_config)
