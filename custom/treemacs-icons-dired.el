(use-package treemacs-icons-dired
  :after treemacs dired
  :ensure t
  :config (treemacs-icons-dired-mode))

(add-hook 'dired-mode-hook 'dired-hide-details-mode)
;;(add-hook 'dired-mode-hook 'treemacs)
;;(add-hook 'dired-fin 'treemacs)
