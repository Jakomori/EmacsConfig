;; "savehist" saves the buffer chronology
(use-package savehist
  :ensure
  :init
  (savehist-mode))

;; "projectile" allow you to easily switch between buffers [I think?]
(use-package projectile
  :ensure
  :init
  (projectile-mode))

;; "treemacs" is that funny thing at your left, to easily navigate inside the declared project
(use-package treemacs
  :ensure
  :init
  (setq treemacs-use-follow-mode t)
  (setq treemacs-use-filewatch-mode t)
  (setq treemacs-use-collapsed-directories 3)
  (setq treemacs-add-and-display-current-project t)
  ;;  (setq treemacs-is-never-other-window t)
  )
(setq-default dotspacemacs-configuration-layers '(
  (treemacs :variables treemacs-lock-width t)))


;; (defun add-or-switch-project-dwim (dir)
;;   "Let elisp do a few chores & set my hands free!"
;;   (interactive (list (read-directory-name "Add to known projects: ")))
;;   (projectile-add-known-project dir)
;;   (find-file dir)
;;   (treemacs-add-and-display-current-project))

(setq add-or-switch-project-dwim t)

;; Do not ask for project-root when opening non-project file [or it should]
(setq projectile-require-project-root nil) 
(save-selected-window (treemacs-select-window))

;; "multi-term" allow you to invoke a bash in Emacs
(use-package multi-term
  :ensure
  :config
  (setq multi-term-program "/bin/bash")
  (setq multi-term-try-create t)
(setq multi-term-dedicated-select-after-open-p t))

(use-package flymake
  :ensure
  :config 
  (setq flymake-mode t))



;; "vterm" also allow you to invoke a bash in Emacs
;;(use-package vterm
;;  :ensure t
;;  :load-path  "~/.emacs.d/libvterm/")

