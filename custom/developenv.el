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

;; (use-package persp-mode
;;   :ensure
;;   :init
;;   (persp-mode)
;;   )


;; "treemacs" is that funny thing at your left, to easily navigate inside the declared project
(use-package treemacs
  :ensure
  :init
;; (setf treemacs-find-workspace-method ('find-for-file-or-pick-first)) 
;;  (treemacs-select-directory t)
;;  (treemacs-add-and-display-current-project)
  ;;(treemacs-git-mode t)
 (setq treemacs-missing-project-action 'ask)
  (setq treemacs-use-follow-mode t)
  (setq treemacs-use-filewatch-mode t)
  (setq treemacs-use-collapsed-directories 3)
;;  (treemacs-select-directory)
  ;;  (setq treemacs-is-never-other-window t)
  ;; :bind (:map treemacs-mode-map
  ;; 	      ("<left>" . root-up)
  ;; 	      ("<right>" . root-down))
  )
(setq-default dotspacemacs-configuration-layers '(
   (treemacs :variables treemacs-lock-width nil)))
(treemacs-project-follow-mode)
(treemacs-display-current-project-exclusively)
(projectile-reset-known-projects)
(kill-current-buffer)
;;(treemacs-peek-mode)

;; ;; Treemacs
;; (use-package treemacs
;;   :diminish
;;   :init
;;   (with-eval-after-load 'winum
;;     (define-key winum-keymap (kbd "M-0") #'treemacs-select-window))
;;   :custom
;;   (treemacs-collapse-dirs 3)
;;   (treemacs-deferred-git-apply-delay 0.5)
;;   (treemacs-display-in-side-window t)
;;   (treemacs-file-event-delay 5000)
;;   (treemacs-file-follow-delay 0.2)
;;   (treemacs-follow-after-init t)
;;   (treemacs-follow-recenter-distance 0.1)
;;   (treemacs-git-command-pipe "")
;;   (treemacs-goto-tag-strategy 'refetch-index)
;;   (treemacs-indentation 2)
;;   (treemacs-indentation-string " ")
;;   (treemacs-is-never-other-window nil)
;;   (treemacs-max-git-entries 5000)
;;   (treemacs-no-png-images nil)
;;   (treemacs-no-delete-other-windows t)
;;   (treemacs-project-follow-cleanup nil)
;;   (treemacs-persist-file (expand-file-name ".cache/treemacs-persist" user-emacs-directory))
;;   (treemacs-recenter-after-file-follow nil)
;;   (treemacs-recenter-after-tag-follow nil)
;; ;;  (treemacs-show-cursor nil)
;;   (treemacs-show-hidden-files t)
;; ;;  (treemacs-silent-filewatch nil)
;; ;;  (treemacs-silent-refresh nil)
;;   (treemacs-sorting 'alphabetic-desc)
;;   (treemacs-space-between-root-nodes t)
;;   (treemacs-tag-follow-cleanup t)
;;   (treemacs-tag-follow-delay 1.5)
;;   (treemacs-width 35)
;;   :config
;;   ;; The default width and height of the icons is 22 pixels. If you are
;;   ;; using a Hi-DPI display, uncomment this to double the icon size.
;;   ;;(treemacs-resize-icons 44)
;;   (treemacs-follow-mode t)
;;   (treemacs-filewatch-mode t)
;;   (treemacs-fringe-indicator-mode t)
;;   (treemacs-add-and-display-current-project-exclusively))





;; (defun add-or-switch-project-dwim (dir)
;;   "Let elisp do a few chores & set my hands free!"
;;   (interactive (list (read-directory-name "Add to known projects: ")))
;;   (projectile-add-known-project dir)
;;   (find-file dir)
;;   (treemacs-add-and-display-current-project))

;;(setq add-or-switch-project-dwim t)

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

(use-package bookmark+
  :ensure
  )


