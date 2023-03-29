;; by Jakomo
;; I'm sorry you have to see this

;;(global-unset-key (kbd "C-S-p"))
;;(global-set-key (kbd "C-S-p") 'projectile-reset-known-projects)
;;(global-set-key (kbd "C-S-p") 'treemacs-add-and-display-current-project-exclusively)

(define-key input-decode-map [?\C-m] [C-m])
;; now we can do this:
(defun notRET ()
  (interactive)
  (message "C-m is not the same as RET any more"))

;; Write customization made throught "customize" in "customized.el"
(setq custom-file "~/.emacs.d/custom/customized.el")
;; Load the customization file "customized.el"
(load-file custom-file)

(load-file "~/.emacs.d/custom/overlay.el")
;; (global-set-key (kbd "<f11>") nil)
;; (global-set-key (kbd "<f11>") 'toggle-frame-maximized)

(load-file "~/.emacs.d/custom/package.el")

(load-file "~/.emacs.d/custom/packagemanager.el")

(load-file "~/.emacs.d/custom/defvar-straight.el")

(load-file "~/.emacs.d/custom/evil-commentary.el")

(load-file "~/.emacs.d/custom/defun-remove-scratch.el")

;;(load-file "~/.emacs.d/custom/nano-theme.el")
(load-file "~/.emacs.d/custom/spacemacs-theme.el")
 
;;---(load-file "~/.emacs.d/custom/corfu.el")

;;(load-file "~/.emacs.d/custom/yasnippet.el")

;;(load-file "~/.emacs.d/custom/lsp-bridge.el")

(load-file "~/.emacs.d/custom/emacs.el")
(global-unset-key (kbd "M-w"))
(global-set-key (kbd "M-w") 'kill-ring-save)
(global-unset-key (kbd "C-w"))
(global-set-key (kbd "C-w") 'kill-region)
(global-unset-key (kbd "C-y"))
(global-set-key (kbd "C-y") 'yank)
(global-unset-key (kbd "C-v"))
(global-set-key (kbd "C-v") 'yank)
(global-unset-key (kbd "C-;"))
(global-set-key (kbd "C-;") 'comment-region)
(global-unset-key (kbd "C-,"))
(global-set-key (kbd "C-,") 'uncomment-region)

(global-unset-key (kbd "M-S-<right>"))
(global-set-key (kbd "M-S-<right>") 'next-buffer)
(global-unset-key (kbd "M-S-<left>"))
(global-set-key (kbd "M-S-<left>") 'previous-buffer)
(global-unset-key (kbd "C-b"))
(global-set-key (kbd "C-b") 'switch-to-buffer)
(global-unset-key (kbd "C-S-b"))
(global-set-key (kbd "C-S-b") 'kill-buffer)

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
(global-unset-key (kbd "C-x <right>"))
(global-set-key (kbd "C-x <right>") 'split-window-right)
(global-unset-key (kbd "C-x <left>"))
(global-set-key (kbd "C-x <left>") 'split-window-left)
(global-unset-key (kbd "C-x <down>"))
(global-set-key (kbd "C-x <down>") 'split-window-below)
(global-unset-key (kbd "C-x <up>"))
(global-set-key (kbd "C-x <up>") 'split-window-preferred-function)

(global-unset-key (kbd "C-x S-<right>"))
(global-set-key (kbd "C-x S-<right>") 'split-window-right)
(global-unset-key (kbd "C-x S-<left>"))
(global-set-key (kbd "C-x S-<left>") 'split-window-left)
(global-unset-key (kbd "C-x S-<down>"))
(global-set-key (kbd "C-x S-<down>") 'split-window-below)
(global-unset-key (kbd "C-x S-<up>"))
(global-set-key (kbd "C-x S-<up>") 'split-window-preferred-function)

(global-unset-key (kbd "C-s"))
(global-set-key (kbd "C-s") 'isearch-repeat-forward)

(global-unset-key (kbd "C-g"))
(global-set-key (kbd "C-g") 'find-file-other-window)
(global-unset-key (kbd "C-S-g"))
(global-set-key (kbd "C-S-g") 'find-file-at-point)

(load-file "~/.emacs.d/custom/dabbrev.el")

;;(load-file "~/.emacs.d/custom/fancy-dabbrev.el")

(load-file "~/.emacs.d/custom/irony.el")

(load-file "~/.emacs.d/custom/company.el")

;; Whole-line-or-region - use whole line for cut/copy when no text is selected
(load-file "~/.emacs.d/custom/whole-line-or-region.el")

;; Popup-kill-ring - better killing means better paste!
(load-file "~/.emacs.d/custom/popup-kill-ring.el")

(load-file "~/.emacs.d/custom/cape.el")

(load-file "~/.emacs.d/custom/vertico.el")

(load-file "~/.emacs.d/custom/projectile.el")

(load-file "~/.emacs.d/custom/origami.el")

(load-file "~/.emacs.d/custom/treemacs.el")
(global-unset-key (kbd "<C-m>"))
(global-set-key (kbd "<C-m>") 'treemacs-select-window)
(global-unset-key (kbd "C-S-m"))
(global-set-key (kbd "C-S-m") 'treemacs)
(define-key treemacs-mode-map (kbd "<left>") 'treemacs-root-up)
(define-key treemacs-mode-map (kbd "<right>") 'treemacs-root-down)

(load-file "~/.emacs.d/custom/treemacs-icons-dired.el")

(load-file "~/.emacs.d/custom/multi-term.el")
(global-unset-key (kbd "C-t"))
(global-set-key (kbd "C-t") 'multi-term-dedicated-open)
(global-unset-key (kbd "C-S-t"))
(global-set-key (kbd "C-S-t") 'multi-term-dedicated-close)

(load-file "~/.emacs.d/custom/flymake.el")

;; (load-file "~/.emacs.d/custom/vterm.el")
;; (global-unset-key (kbd "C-t"))
;; (global-set-key (kbd "C-t") ')
;; (global-unset-key (kbd "C-S-t"))
;; (global-set-key (kbd "C-S-t") 'multi-term-dedicated-close)

(load-file "~/.emacs.d/custom/bookmark+.el")

(load-file "~/.emacs.d/custom/minimap.el")

(load-file "~/.emacs.d/custom/which-key.el")

(load-file "~/.emacs.d/custom/crdt.el")

(load-file "~/.emacs.d/custom/savehist.el")

(load-file "~/.emacs.d/custom/ggtags.el")

(load-file "~/.emacs.d/custom/undo-fu.el")

(load-file "~/.emacs.d/custom/undo-fu-session.el")
(global-unset-key (kbd "C-_"))
(global-set-key (kbd "C-_") 'undo-fu-only-undo)
(global-unset-key (kbd "C--"))
(global-set-key (kbd "C--") 'undo-fu-only-redo)
(global-unset-key (kbd "C-z"))
(global-set-key (kbd "C-z") 'undo-fu-only-undo)
(global-unset-key (kbd "C-S-z"))
(global-set-key (kbd "C-S-z") 'undo-fu-only-redo)

(load-file "~/.emacs.d/custom/key-chord.el")

(load-file "~/.emacs.d/custom/icicles.el")

(load-file "~/.emacs.d/custom/use-package-chords.el")

(load-file "~/.emacs.d/custom/globalkb.el")

(load-file "~/.emacs.d/custom/bookmark+.el")

(load-file "~/.emacs.d/custom/magit.el")

(global-unset-key (kbd "C-c g"))
(global-set-key (kbd "C-c g") 'magit-file-dispatch)

(setq byte-compile-warnings '(cl-functions))
