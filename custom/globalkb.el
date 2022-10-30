
;;Emacs Default

;; (global-unset-key (kbd "C-v"))
;; (global-set-key (kbd "C-v") 'yank)

;; (global-unset-key (kbd "C-c"))
;; (global-set-key (kbd "C-c") 'killing-ring-save)

;; (global-unset-key (kbd "C-x"))
;; (global-set-key (kbd "C-x") 'kill-region)

;; (global-unset-key (kbd "C-z"))
;; (global-set-key (kbd "C-z") 'undo)

;; (global-unset-key (kbd "C-s"))
;; (global-set-key (kbd "C-s") 'save-buffer)

(global-unset-key (kbd "C-v"))
;;(global-set-key (kbd "") ')

(global-unset-key (kbd "C-q"))
(global-set-key (kbd "C-q") 'delete-window)

(global-unset-key (kbd "C-t"))
(global-set-key (kbd "C-t") 'multi-term-dedicated-open)

;;(define-key multi-term-dedicated-buffer (kbd "C-c") "C-c")
;;(define-key multi-term-dedicated-buffer (kbd "C-t") 'delete-window)

;;(global-set-key (kbd "<f11>") nil)
;;(global-set-key (kbd "<f11>") 'toggle-frame-maximized)

(global-unset-key (kbd "C-g"))
(global-set-key (kbd "C-g") 'find-file-at-point)

(global-unset-key (kbd "C-p"))
(global-set-key (kbd "C-p") 'switch-to-buffer)

(global-unset-key (kbd "M-<left>"))
(global-set-key (kbd "M-<left>") 'windmove-left)

(global-unset-key (kbd "M-<right>"))
(global-set-key (kbd "M-<right>") 'windmove-right)

(global-unset-key (kbd "M-<up>"))
(global-set-key (kbd "M-<up>") 'windmove-up)

(global-unset-key (kbd "M-<down>"))
(global-set-key (kbd "M-<down>") 'windmove-down)

(global-unset-key (kbd "C-k"))
(global-set-key (kbd "C-k") 'kill-current-buffer)

(global-unset-key (kbd "C-S-k"))
(global-set-key (kbd "C-S-k") 'kill-buffer)

;;(global-unset-key (kbd "C-p"))
;;(global-set-key (kbd "C-p") 'treemacs-edit-workspaces)

;;(global-unset-key (kbd "C-n"))
;;(global-set-key (kbd "C-n") 'wor               )

(global-unset-key (kbd "C-S-p"))
(global-set-key (kbd "C-S-p") 'projectile-reset-known-projects)
(global-set-key (kbd "C-S-p") 'treemacs-add-and-display-current-project-exclusively)

;;(use-local-map (copy-keymap foo-mode-map))
;;(local-set-key "<left>" 'treemacs-root-up)
;;(local-set-key "<right>" 'treemacs-root-down)

;; (global-set-key (kbd "<left>") 'treemacs-root-up)
;; (global-set-key (kbd "<right>") 'treemacs-root-down)

(define-key treemacs-mode-map (kbd "<left>") 'treemacs-root-up)
(define-key treemacs-mode-map (kbd "<right>") 'treemacs-root-down)
;;(define-key treemacs-mode-map (kbd "<right>") 'treemacs-peek-mode-hook)
;;(define-key treemacs-mode-map (kbd "<right>") 'treemacs-root-down)




(global-unset-key (kbd "M-S-<right>"))
(global-set-key (kbd "M-S-<right>") 'next-buffer)

(global-unset-key (kbd "M-S-<left>"))
(global-set-key (kbd "M-S-<left>") 'previous-buffer)

(global-unset-key (kbd "C-;"))
(global-set-key (kbd "C-;") 'comment-region)

(global-unset-key (kbd "C-,"))
(global-set-key (kbd "C-,") 'uncomment-region)

;; (global-unset-key (kbd "C-b"))
;; (global-set-key (kbd "C-b") 'bookmark-bmenu-list)

(global-unset-key (kbd "C-b"))
(global-set-key (kbd "C-b") 'bookmark-load)
(global-set-key (kbd "C-b") 'bookmark-jump)

(global-unset-key (kbd "C-S-b"))
(global-set-key (kbd "C-S-b") 'bookmark-load)
(global-set-key (kbd "C-S-b") 'bookmark-set)

(global-unset-key (kbd "C-d"))
(global-set-key (kbd "C-d") 'bookmark-load)
(global-set-key (kbd "C-d") 'bookmark-delete)

;; (global-unset-key (kbd "C-b"))
;; (global-set-key (kbd "C-b") 'bookmark-set)

;;(define-key bookmark-bmenu-mode-li (kbd "C-d") 'bookmark-delete)
;;(define-key treemacs-mode-map (kbd "<right>") 'treemacs-root-down)
