
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

(global-unset-key (kbd "C-t"))
(global-set-key (kbd "C-t") 'multi-term-dedicated-open)

(global-set-key (kbd "<f11>") nil)
(global-set-key (kbd "<f11>") 'toggle-frame-maximized)

(global-unset-key (kbd "C-g"))
(global-set-key (kbd "C-g") 'find-file-at-point)

(global-unset-key (kbd "C-b"))
(global-set-key (kbd "C-b") 'switch-to-buffer)

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

(global-unset-key (kbd "C-p"))
(global-set-key (kbd "C-p") 'treemacs-edit-workspaces)

;;(global-unset-key (kbd "C-p"))
;;(global-set-key (kbd "C-p") 'treemacs-add-and-display-current-project)

(global-unset-key (kbd "M-S-<right>"))
(global-set-key (kbd "M-S-<right>") 'next-buffer)

(global-unset-key (kbd "M-S-<right>"))
(global-set-key (kbd "M-S-<right>") 'previous-buffer)

(global-unset-key (kbd "C-;"))
(global-set-key (kbd "C-;") 'comment-region)

(global-unset-key (kbd "C-,"))
(global-set-key (kbd "C-,") 'uncomment-region)
	       


