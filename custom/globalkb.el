
;;Emacs Default



(global-unset-key (kbd "C-y"))
(global-set-key (kbd "C-y") 'yank)

(global-unset-key (kbd "C-v"))
(global-set-key (kbd "C-v") 'yank)

(global-unset-key (kbd "C-z"))
(global-set-key (kbd "C-z") 'undo-fu-only-undo)

(global-unset-key (kbd "C-S-z"))
(global-set-key (kbd "C-S-z") 'undo-fu-only-redo)

(global-unset-key (kbd "C-f"))
(global-set-key (kbd "C-f") 'isearch-forward)

(global-unset-key (kbd "C-s"))
(global-set-key (kbd "C-s") 'suspend-frame)

;; (global-unset-key (kbd "M-w"))
;; (global-set-key (kbd "M-w") 'killing-ring-save)

;; (global-unset-key (kbd "C-w"))
;; (global-set-key (kbd "C-w") 'kill-region)

(global-unset-key (kbd "C-_"))
(global-set-key (kbd "C-_") 'undo-fu-only-undo)

(global-unset-key (kbd "C--"))
(global-set-key (kbd "C--") 'undo-fu-only-redo)

(global-unset-key (kbd "C-n"))
(global-set-key (kbd "C-n") 'split-window-horizontally)

;;(global-unset-key (kbd "C-n"))
;;(global-set-key (kbd "C-n") 'new-window-on-right)

(global-unset-key (kbd "C-t"))
(global-set-key (kbd "C-t") 'multi-term-dedicated-open)

(global-unset-key (kbd "C-S-t"))
(global-set-key (kbd "C-S-t") 'multi-term-dedicated-close)

;;(define-key multi-term-dedicated-window (kbd "<escape>") 'previous-window)

;;(define-key multi-term-dedicated-buffer (kbd "C-c") "C-c")
;;(define-key multi-term-dedicated-buffer (kbd "C-t") 'delete-window)

;;(global-set-key (kbd "<f11>") nil)
;;(global-set-key (kbd "<f11>") 'toggle-frame-maximized)

;; (global-unset-key (kbd "C-g"))
;; (global-set-key (kbd "C-g") 'find-file-at-point)

;; (defcustom term-bind-key-alist
;;   '(
;;     ("C-c" . term-interrupt-subjob)
;;     ("<escape>" . previous-window)
;;     ("C-t" . 'multi-term-dedicated-close)
;;     ;; ("C-n" . next-line)
;;     ;; ("C-s" . isearch-forward)
;;     ;; ("C-r" . isearch-backward)
;;     ;; ("C-m" . term-send-return)
;;     ;; ("C-y" . term-paste)
;;     ;; ("M-f" . term-send-forward-word)
;;     ;; ("M-b" . term-send-backward-word)
;;     ;; ("M-o" . term-send-backspace)
;;     ;; ("M-p" . term-send-up)
;;     ;; ("M-n" . term-send-down)
;;     ;; ("M-M" . term-send-forward-kill-word)
;;     ;; ("M-N" . term-send-backward-kill-word)
;;     ;; ("<C-backspace>" . term-send-backward-kill-word)
;;     ;; ("M-r" . term-send-reverse-search-history)
;;     ;; ("M-d" . term-send-delete-word)
;;     ;; ("M-," . term-send-raw)
;;     ("M-." . comint-dynamic-complete)
;;     )
;;   "The key alist that will need to be bind.
;; If you do not like default setup, modify it, with (KEY . COMMAND) format."
;;   :type 'alist
;;   :group 'multi-term)


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
(global-set-key (kbd "C-k") 'delete-window)

(global-unset-key (kbd "C-S-k"))
(global-set-key (kbd "C-S-k") 'kill-buffer)

(global-unset-key (kbd "C-+"))
(global-set-key (kbd "C-+") 'origami-close-node)

(global-unset-key (kbd "C-ù"))
(global-set-key (kbd "C-ù") 'origami-show-node)


;;(global-unset-key (kbd "C-p"))
;;(global-set-key (kbd "C-p") 'treemacs-edit-workspaces)

;;(global-unset-key (kbd "C-S-p"))
;;(global-set-key (kbd "C-S-p") 'projectile-reset-known-projects)
;;(global-set-key (kbd "C-S-p") 'treemacs-add-and-display-current-project-exclusively)

;;(global-unset-key ("M-t"))
;;(global-set-key ("M-t") 'treemacs-select-window)

;;(use-local-map (copy-keymap foo-mode-map))
;;(local-set-key "<left>" 'treemacs-root-up)
;;(local-set-key "<right>" 'treemacs-root-down)

;; (global-set-key (kbd "<left>") 'treemacs-root-up)
;; (global-set-key (kbd "<right>") 'treemacs-root-down)

(define-key treemacs-mode-map (kbd "<left>") 'treemacs-root-up)
(define-key treemacs-mode-map (kbd "<right>") 'treemacs-root-down)

;;(define-key treemacs-mode-map (kbd "<right>") 'treemacs-peek-mode-hook)
;;(define-key treemacs-mode-map (kbd "<right>") 'treemacs-root-down)
;;(define-key treemacs-mode-map (kbd "b") 'treemacs-bookmark)
;;(define-key treemacs-mode-map (kbd "b") 'bookmark-set)

;; (global-unset-key (kbd "C-m"))
;; (global-set-key (kbd "C-m") 'treemacs-select-window)


(define-key input-decode-map [?\C-m] [C-m])
;; now we can do this:
(defun notRET ()
  (interactive)
  (message "C-m is not the same as RET any more!"))

(global-unset-key (kbd "<C-m>"))
(global-set-key (kbd "<C-m>") 'treemacs-select-window)

(global-unset-key (kbd "C-S-m"))
(global-set-key (kbd "C-S-m") 'treemacs)

(global-unset-key (kbd "M-S-<right>"))
(global-set-key (kbd "M-S-<right>") 'next-buffer)

(global-unset-key (kbd "M-S-<left>"))
(global-set-key (kbd "M-S-<left>") 'previous-buffer)

(global-unset-key (kbd "C-;"))
(global-set-key (kbd "C-;") 'comment-region)

(global-unset-key (kbd "C-,"))
(global-set-key (kbd "C-,") 'uncomment-region)

;; (global-unset-key (kbd "C-p"))
;; (global-set-key (kbd "C-p") 'bmkp-bookmark-list-jump)

;; (global-unset-key (kbd "C-S-p"))
;; (global-set-key (kbd "C-S-p") 'bmkp-bookmark-list)


;;(global-unset-key (kbd "C-b"))
;;(global-set-key (kbd "C-b") 'bkmp-buffer)


;; (global-unset-key (kbd "C-b"))
;; (global-set-key (kbd "C-b") 'bookmark-load)
;; (global-set-key (kbd "C-b") 'bookmark-jump)

;; (global-unset-key (kbd "C-b"))
;; (global-set-key (kbd "C-b") 'bookmark-bmenu-list)

;; (global-unset-key (kbd "C-S-b"))
;; (global-set-key (kbd "C-S-b") 'bookmark-load)
;; (global-set-key (kbd "C-S-b") 'bookmark-set)

;;(defcustom dired-<RET>-actions-config
;;   '((file-node   . treemacs-toggle-node)

;; (global-unset-key (kbd "C-S-d"))
;; (global-set-key (kbd "C-S-d") 'bookmark-load)
;; (global-set-key (kbd "C-S-d") 'bookmark-delete)

;; (define-key bookmark-bmenu-mode-map (kbd "C-f") 'bmkp-bmenu-filter-tags-incrementally)
;; (define-key bookmark-bmenu-mode-map (kbd "C-c") 'bookmark-bmenu-list)
;; (define-key bookmark-bmenu-mode-map (kbd "C-t") 'bmkp-tag-a-file)
;; (define-key bookmark-bmenu-mode-map (kbd "C-d") 'bookmark-delete)

;; (global-unset-key (kbd "C-b"))
;; (global-set-key (kbd "C-b") 'bookmark-set)

;;(define-key bookmark-bmenu-mode-li (kbd "C-d") 'bookmark-delete)
;;(define-key treemacs-mode-map (kbd "<right>") 'treemacs-root-down)

;; (defcustom treemacs-<left>-actions-config
;;   '((root-node-open   . treemacs-toggle-node)
;;     (root-node-closed . treemacs-toggle-node)
;;     (dir-node-open    . treemacs-peek-mode)
;;     (dir-node-closed  . treemacs-toggle-node)
;;     (file-node-open   . treemacs-visit-node-default)
;;     (file-node-closed . treemacs-visit-node-default)
;;     (tag-node-open    . treemacs-toggle-node-prefer-tag-visit)
;;     (tag-node-closed  . treemacs-toggle-node-prefer-tag-visit)
;;     (tag-node         . treemacs-visit-node-default))
;;   "Defines the behaviour of `treemacs--action'.

;; (term-unbind-key-list)
;; (term-bind-key-alist)

;; (global-set-key (kbd "C-<BACKSPACE>") 
