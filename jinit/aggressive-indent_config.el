(use-package aggressive-indent
  :ensure
  )

(global-aggressive-indent-mode 1)
(add-to-list 'aggressive-indent-excluded-modes 'html-mode)

(provide 'aggressive-indent_config)
