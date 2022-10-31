;;(use-package dirvish
;;  :ensure
;;  )
;;(dirvish-override-dired-mode)

;; (use-package dired+
;;   :quelpa (dired+ :fetcher url :url "https://www.emacswiki.org/emacs/download/dired+.el")
;;   :defer 1
;;   :init
;;   (setq diredp-hide-details-initially-flag nil)
;;   (setq diredp-hide-details-propagate-flag nil)

;;   :config
;;   (diredp-toggle-find-file-reuse-dir 1))

;;(use-package imagemagick
;;  :ensure
;;  )

;;(use-package poppler
;;  :ensure
;;  )

;;(use-package ffmpegthumbnailer
;;  :ensure
;;  )

;;(use-package mediainfo
;;  :ensure
;;  )

;;(use-package tar
;;  :ensure
;;  )

;;(use-package unzip
;;  :ensure
;;  )


(use-package treemacs-icons-dired
  :after treemacs dired
  :ensure t
  :config (treemacs-icons-dired-mode))

(add-hook 'dired-mode-hook 'dired-hide-details-mode)
;;(add-hook 'dired-mode-hook 'treemacs)
;;(add-hook 'dired-fin 'treemacs)


;;(use-package aggressive-indent
;;:ensure)
;;(global-aggressive-indent-mode 1)
;;(add-to-list 'aggressive-indent-excluded-modes 'html-mode)
